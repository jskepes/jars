require 'rails_helper'

RSpec.describe "g_notes/show", :type => :view do
  before(:each) do
    @g_note = assign(:g_note, GNote.create!(
      :cat1 => "Cat1",
      :cat2 => "Cat2",
      :g_note => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Cat1/)
    expect(rendered).to match(/Cat2/)
    expect(rendered).to match(/MyText/)
  end
end
