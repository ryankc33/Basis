require "spec_helper"

describe LifeInsurancesController do
  describe "routing" do

    it "routes to #index" do
      get("/life_insurances").should route_to("life_insurances#index")
    end

    it "routes to #new" do
      get("/life_insurances/new").should route_to("life_insurances#new")
    end

    it "routes to #show" do
      get("/life_insurances/1").should route_to("life_insurances#show", :id => "1")
    end

    it "routes to #edit" do
      get("/life_insurances/1/edit").should route_to("life_insurances#edit", :id => "1")
    end

    it "routes to #create" do
      post("/life_insurances").should route_to("life_insurances#create")
    end

    it "routes to #update" do
      put("/life_insurances/1").should route_to("life_insurances#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/life_insurances/1").should route_to("life_insurances#destroy", :id => "1")
    end

  end
end
