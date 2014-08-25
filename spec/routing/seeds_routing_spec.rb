require "rails_helper"

RSpec.describe SeedsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/seeds").to route_to("seeds#index")
    end

    it "routes to #new" do
      expect(:get => "/seeds/new").to route_to("seeds#new")
    end

    it "routes to #show" do
      expect(:get => "/seeds/1").to route_to("seeds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/seeds/1/edit").to route_to("seeds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/seeds").to route_to("seeds#create")
    end

    it "routes to #update" do
      expect(:put => "/seeds/1").to route_to("seeds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/seeds/1").to route_to("seeds#destroy", :id => "1")
    end

  end
end
