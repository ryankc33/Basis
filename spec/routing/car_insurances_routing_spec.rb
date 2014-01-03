require "spec_helper"

describe CarInsurancesController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/car_insurances").to route_to("car_insurances#index")
    end

    it "routes to #new" do
      expect(:get => "/car_insurances/new").to route_to("car_insurances#new")
    end

    it "routes to #show" do
      expect(:get => "/car_insurances/1").to route_to("car_insurances#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/car_insurances/1/edit").to route_to("car_insurances#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/car_insurances").to route_to("car_insurances#create")
    end

    it "routes to #update" do
      expect(:put => "/car_insurances/1").to route_to("car_insurances#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/car_insurances/1").to route_to("car_insurances#destroy", :id => "1")
    end

  end
end
