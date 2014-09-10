require "rails_helper"

RSpec.describe GNotesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/g_notes").to route_to("g_notes#index")
    end

    it "routes to #new" do
      expect(:get => "/g_notes/new").to route_to("g_notes#new")
    end

    it "routes to #show" do
      expect(:get => "/g_notes/1").to route_to("g_notes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/g_notes/1/edit").to route_to("g_notes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/g_notes").to route_to("g_notes#create")
    end

    it "routes to #update" do
      expect(:put => "/g_notes/1").to route_to("g_notes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/g_notes/1").to route_to("g_notes#destroy", :id => "1")
    end

  end
end
