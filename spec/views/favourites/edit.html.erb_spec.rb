require 'rails_helper'

RSpec.describe "favourites/edit", type: :view do
  before(:each) do
    @favourite = assign(:favourite, Favourite.create!(
      :name => "MyString",
      :user => User.create!,
      :item => Item.create!
    ))
  end

  it "renders the edit favourite form" do
    render

    assert_select "form[action=?][method=?]", favourite_path(@favourite), "post" do

      assert_select "input[name=?]", "favourite[name]"
    end
  end
end
