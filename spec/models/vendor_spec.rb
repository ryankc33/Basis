require 'spec_helper'

describe Vendor do

  before do
    @vendor = Vendor.new(name: "Vendor1", email: "vendor@example.com",
                     password: "password", password_confirmation: "password")
  end

  subject { @vendor }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:name) }
  it { should respond_to(:primary_phone) }
  it { should respond_to(:primary_website) }
  it { should respond_to(:primary_contact_name) }
  it { should respond_to(:primary_contact_position) }
  it { should respond_to(:primary_contact_department) }
  it { should respond_to(:year_established) }

  it { should be_valid }

  describe "when name is not present" do
    before { @vendor.name = " " }
    it { should_not be_valid }
  end

  describe "when name is too long" do
    before { @vendor.name = "a" * 61 }
    it { should_not be_valid }
  end
end

