require 'rails_helper'

RSpec.describe "harvests/edit", :type => :view do
  before(:each) do
    @harvest = assign(:harvest, Harvest.create!(
      :plant_id => 1,
      :yield => ""
    ))
  end

  it "renders the edit harvest form" do
    render

    assert_select "form[action=?][method=?]", harvest_path(@harvest), "post" do

      assert_select "input#harvest_plant_id[name=?]", "harvest[plant_id]"

      assert_select "input#harvest_yield[name=?]", "harvest[yield]"
    end
  end
end
