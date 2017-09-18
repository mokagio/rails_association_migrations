require 'rails_helper'

RSpec.describe "favourites/new", type: :view do
  before(:each) do
    assign(:favourite, Favourite.new(
      :name => "MyString"
    ))
  end

  it "renders new favourite form" do
    render

    assert_select "form[action=?][method=?]", favourites_path, "post" do

      assert_select "input[name=?]", "favourite[name]"
    end
  end
end
