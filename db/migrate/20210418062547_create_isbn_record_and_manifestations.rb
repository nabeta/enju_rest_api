class CreateIsbnRecordAndManifestations < ActiveRecord::Migration[6.1]
  def change
    create_table :isbn_record_and_manifestations do |t|
      t.references :isbn_record, null: false, foreign_key: true
      t.references :manifestation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
