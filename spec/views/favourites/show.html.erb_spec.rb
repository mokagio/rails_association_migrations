require 'rails_helper'

RSpec.describe "favourites/show", type: :view do
  before(:each) do
    @favourite = assign(:favourite, Favourite.create!(
      :name => "Name",
      :user => User.create!,
      :item => Item.create!
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
