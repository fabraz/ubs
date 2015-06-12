require "rails_helper"

RSpec.describe BasicUnitsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/basic_units").to route_to("basic_units#index")
    end

    it "routes to #new" do
      expect(:get => "/basic_units/new").to route_to("basic_units#new")
    end

    it "routes to #show" do
      expect(:get => "/basic_units/1").to route_to("basic_units#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/basic_units/1/edit").to route_to("basic_units#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/basic_units").to route_to("basic_units#create")
    end

    it "routes to #update" do
      expect(:put => "/basic_units/1").to route_to("basic_units#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/basic_units/1").to route_to("basic_units#destroy", :id => "1")
    end

  end
end
