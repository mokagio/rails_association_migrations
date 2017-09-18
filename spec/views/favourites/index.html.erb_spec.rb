require 'rails_helper'

RSpec.describe "favourites/index", type: :view do
  before(:each) do
    assign(:favourites, [
      Favourite.create!(
        :name => "Name",
        :user => User.create!
      ),
      Favourite.create!(
        :name => "Name",
        :user => User.create!
      )
    ])
  end

  it "renders a list of favourites" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
