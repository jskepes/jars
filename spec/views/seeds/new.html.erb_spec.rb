require 'rails_helper'

RSpec.describe "seeds/new", :type => :view do
  before(:each) do
    assign(:seed, Seed.new(
      :variety_id => 1,
      :seed_number => "MyString",
      :harvest_days => 1
    ))
  end

  it "renders new seed form" do
    render

    assert_select "form[action=?][method=?]", seeds_path, "post" do

      assert_select "input#seed_variety_id[name=?]", "seed[variety_id]"

      assert_select "input#seed_seed_number[name=?]", "seed[seed_number]"

      assert_select "input#seed_harvest_days[name=?]", "seed[harvest_days]"
    end
  end
end
