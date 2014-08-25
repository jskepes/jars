require 'rails_helper'

RSpec.describe "seeds/index", :type => :view do
  before(:each) do
    assign(:seeds, [
      Seed.create!(
        :variety_id => 1,
        :seed_number => "Seed Number",
        :harvest_days => 2
      ),
      Seed.create!(
        :variety_id => 1,
        :seed_number => "Seed Number",
        :harvest_days => 2
      )
    ])
  end

  it "renders a list of seeds" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Seed Number".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
