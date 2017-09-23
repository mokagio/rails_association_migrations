require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many :favourites }

  # This test is just to ensure that I've written the migration and associations correctly.
  # One shouldn't usually test the workings of one of it's dependencies, ActiveRecord in this case.
  it 'can be assigned many favourites' do
    user = User.create!
    user.favourites.push Favourite.create!(user: user, item: Item.create!, name: 'foo')
    user.favourites.push Favourite.create!(user: user, item: Item.create!, name: 'bar')

    expect(user.favourites.length).to eq 2
  end
end
