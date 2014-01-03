require 'spec_helper'

describe "lifequotes/show" do
  before(:each) do
    @lifequote = assign(:lifequote, stub_model(Lifequote,
      :cover_amount => "9.99",
      :cover => "Cover",
      :cover_type => "Cover Type",
      :cover_duration => "Cover Duration",
      :joint_cover => false,
      :monthly_payment => false,
      :applicant_title => "Applicant Title",
      :applicant_firstname => "Applicant Firstname",
      :applicant_lastname => "Applicant Lastname",
      :email => "Email",
      :applicant_phone => "MyText",
      :smoking => false,
      :joint_applicant_title => "Joint Applicant Title",
      :joint_applicant_firstname => "Joint Applicant Firstname",
      :joint_applicant_lastname => "Joint Applicant Lastname",
      :joint_applicant_smoking => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/9.99/)
    rendered.should match(/Cover/)
    rendered.should match(/Cover Type/)
    rendered.should match(/Cover Duration/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Applicant Title/)
    rendered.should match(/Applicant Firstname/)
    rendered.should match(/Applicant Lastname/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
    rendered.should match(/Joint Applicant Title/)
    rendered.should match(/Joint Applicant Firstname/)
    rendered.should match(/Joint Applicant Lastname/)
    rendered.should match(/false/)
  end
end
