require 'spec_helper'

describe "life_insurances/index" do
  before(:each) do
    assign(:life_insurances, [
      stub_model(LifeInsurance,
        :reviewable => false,
        :monthly_premium_base => 1
      ),
      stub_model(LifeInsurance,
        :reviewable => false,
        :monthly_premium_base => 1
      )
    ])
  end

  it "renders a list of life_insurances" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
