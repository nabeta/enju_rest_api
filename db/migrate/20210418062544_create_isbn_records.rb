class CreateIsbnRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :isbn_records do |t|
      t.string :body, null: false

      t.timestamps
    end

    add_index :isbn_records, :body, unique: true
  end
end
