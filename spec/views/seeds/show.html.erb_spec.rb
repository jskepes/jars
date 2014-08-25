require 'rails_helper'

RSpec.describe "seeds/show", :type => :view do
  before(:each) do
    @seed = assign(:seed, Seed.create!(
      :variety_id => 1,
      :seed_number => "Seed Number",
      :harvest_days => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Seed Number/)
    expect(rendered).to match(/2/)
  end
end
