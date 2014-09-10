require 'rails_helper'

RSpec.describe "g_notes/new", :type => :view do
  before(:each) do
    assign(:g_note, GNote.new(
      :cat1 => "MyString",
      :cat2 => "MyString",
      :g_note => "MyText"
    ))
  end

  it "renders new g_note form" do
    render

    assert_select "form[action=?][method=?]", g_notes_path, "post" do

      assert_select "input#g_note_cat1[name=?]", "g_note[cat1]"

      assert_select "input#g_note_cat2[name=?]", "g_note[cat2]"

      assert_select "textarea#g_note_g_note[name=?]", "g_note[g_note]"
    end
  end
end
