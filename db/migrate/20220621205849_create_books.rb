class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :price

      t.timestamps
    end
    add_index :books, :title
  end
end
