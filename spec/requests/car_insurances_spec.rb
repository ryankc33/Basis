require 'spec_helper'

describe "CarInsurances" do
  describe "GET /car_insurances" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get car_insurances_path
      expect(response.status).to be(200)
    end
  end
end
