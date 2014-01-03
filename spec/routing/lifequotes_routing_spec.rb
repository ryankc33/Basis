require "spec_helper"

describe LifequotesController do
  describe "routing" do

    it "routes to #index" do
      get("/lifequotes").should route_to("lifequotes#index")
    end

    it "routes to #new" do
      get("/lifequotes/new").should route_to("lifequotes#new")
    end

    it "routes to #show" do
      get("/lifequotes/1").should route_to("lifequotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lifequotes/1/edit").should route_to("lifequotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lifequotes").should route_to("lifequotes#create")
    end

    it "routes to #update" do
      put("/lifequotes/1").should route_to("lifequotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lifequotes/1").should route_to("lifequotes#destroy", :id => "1")
    end

  end
end
