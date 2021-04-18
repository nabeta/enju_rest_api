class Api::ManifestationsController < ActionController::API
  before_action :authenticate_user!

  def create
    @manifestation = Manifestation.new(manifestation_params[:attributes])

    if @manifestation.save
      isbn = IsbnRecord.find_or_create_by!(body: @manifestation.isbn)
      if @manifestation.isbn_records.empty?
        @manifestation.isbn_records << isbn
      end

      render json: @manifestation, status: :created, location: @manifestation
    else
      render json: @manifestation.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manifestation
      @manifestation = Manifestation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manifestation_params
      params.require(:data).permit! #(:data)
    end
end
