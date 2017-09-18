require 'rails_helper'

RSpec.describe "items/index", type: :view do
  before(:each) do
    assign(:items, [
      Item.create!(
        :description => "Description"
      ),
      Item.create!(
        :description => "Description"
      )
    ])
  end

  it "renders a list of items" do
    render
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
