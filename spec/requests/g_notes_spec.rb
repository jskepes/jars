require 'rails_helper'

RSpec.describe "GNotes", :type => :request do
  describe "GET /g_notes" do
    it "works! (now write some real specs)" do
      get g_notes_path
      expect(response.status).to be(200)
    end
  end
end
