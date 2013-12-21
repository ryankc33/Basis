require "spec_helper"

describe LifeInsurancesController do
  describe "routing" do
    
    subject { page }
    
    describe "Life Insurance index" do
      before { visit life_insurances_path }

      it { should have_content('Life Insurance') }
      it { should have_title(full_title('Compare Cheap Life Insurance Policies in Malaysia')) }
    end
    
    describe "Life Insurance New" do
      before { visit new_life_insurance_path }
      
      it { should have_content('New Life Insurance') }
    end

    describe "Life Insurance Page" do
      
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
