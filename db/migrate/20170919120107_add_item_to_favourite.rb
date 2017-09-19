class AddItemToFavourite < ActiveRecord::Migration[5.1]
  def change
    add_reference :favourites, :item, foreign_key: true
  end
end
