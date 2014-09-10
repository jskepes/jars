require 'rails_helper'

RSpec.describe "g_notes/index", :type => :view do
  before(:each) do
    assign(:g_notes, [
      GNote.create!(
        :cat1 => "Cat1",
        :cat2 => "Cat2",
        :g_note => "MyText"
      ),
      GNote.create!(
        :cat1 => "Cat1",
        :cat2 => "Cat2",
        :g_note => "MyText"
      )
    ])
  end

  it "renders a list of g_notes" do
    render
    assert_select "tr>td", :text => "Cat1".to_s, :count => 2
    assert_select "tr>td", :text => "Cat2".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
