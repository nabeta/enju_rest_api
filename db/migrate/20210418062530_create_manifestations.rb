class CreateManifestations < ActiveRecord::Migration[6.1]
  def change
    create_table :manifestations do |t|
      t.text :original_title
      t.text :note

      t.timestamps
    end
  end
end
