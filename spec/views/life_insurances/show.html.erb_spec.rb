require 'spec_helper'

describe "life_insurances/show" do
  before(:each) do
    @life_insurance = assign(:life_insurance, stub_model(LifeInsurance,
      :reviewable => false,
      :monthly_premium_base => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    rendered.should match(/1/)
  end
end
