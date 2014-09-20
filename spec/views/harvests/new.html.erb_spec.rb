require 'rails_helper'

RSpec.describe "harvests/new", :type => :view do
  before(:each) do
    assign(:harvest, Harvest.new(
      :plant_id => 1,
      :yield => ""
    ))
  end

  it "renders new harvest form" do
    render

    assert_select "form[action=?][method=?]", harvests_path, "post" do

      assert_select "input#harvest_plant_id[name=?]", "harvest[plant_id]"

      assert_select "input#harvest_yield[name=?]", "harvest[yield]"
    end
  end
end
