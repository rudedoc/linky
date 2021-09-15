class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.integer :imageable_id
      t.string :imageable_type

      t.timestamps
    end
    add_index :images, :imageable_id
    add_index :images, :imageable_type
  end
end
