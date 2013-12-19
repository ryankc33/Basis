require 'spec_helper'

describe "life_insurances/edit" do
  before(:each) do
    @life_insurance = assign(:life_insurance, stub_model(LifeInsurance,
      :reviewable => false,
      :monthly_premium_base => 1
    ))
  end

  it "renders the edit life_insurance form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", life_insurance_path(@life_insurance), "post" do
      assert_select "input#life_insurance_reviewable[name=?]", "life_insurance[reviewable]"
      assert_select "input#life_insurance_monthly_premium_base[name=?]", "life_insurance[monthly_premium_base]"
    end
  end
end
