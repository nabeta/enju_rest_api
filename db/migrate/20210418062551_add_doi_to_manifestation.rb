class AddDoiToManifestation < ActiveRecord::Migration[6.1]
  def change
    add_column :manifestations, :doi, :string
  end
end
