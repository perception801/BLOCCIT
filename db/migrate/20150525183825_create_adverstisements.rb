class CreateAdverstisements < ActiveRecord::Migration
  def change
    create_table :adverstisements do |t|
      t.string :title
      t.text :copy
      t.integer :price
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
