class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :published_year
      t.decimal :price
      t.text :summary
      t.integer :author_id

      t.timestamps
    end
  end
end
