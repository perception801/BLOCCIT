class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
     t.references :post, :user

      t.timestamps null: false
    end
  end
end
