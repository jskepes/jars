require 'rails_helper'

RSpec.describe "g_notes/edit", :type => :view do
  before(:each) do
    @g_note = assign(:g_note, GNote.create!(
      :cat1 => "MyString",
      :cat2 => "MyString",
      :g_note => "MyText"
    ))
  end

  it "renders the edit g_note form" do
    render

    assert_select "form[action=?][method=?]", g_note_path(@g_note), "post" do

      assert_select "input#g_note_cat1[name=?]", "g_note[cat1]"

      assert_select "input#g_note_cat2[name=?]", "g_note[cat2]"

      assert_select "textarea#g_note_g_note[name=?]", "g_note[g_note]"
    end
  end
end
