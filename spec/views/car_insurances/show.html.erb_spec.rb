require 'spec_helper'

describe "car_insurances/show" do
  before(:each) do
    @car_insurance = assign(:car_insurance, stub_model(CarInsurance,
      :name => "Name",
      :premium_base => "9.99",
      :description => "MyText",
      :benefits => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
