class AddUserToFavourite < ActiveRecord::Migration[5.1]
  def change
    add_reference :favourites, :user, foreign_key: true
  end
end
