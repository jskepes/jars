require 'rails_helper'

RSpec.describe "harvests/index", :type => :view do
  before(:each) do
    assign(:harvests, [
      Harvest.create!(
        :plant_id => 1,
        :yield => ""
      ),
      Harvest.create!(
        :plant_id => 1,
        :yield => ""
      )
    ])
  end

  it "renders a list of harvests" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
