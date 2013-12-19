require 'spec_helper'

describe "Routes" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Moneybaby') }
    it { should have_title(full_title('Compare Malaysia insurance, credit cards, mortgages')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_content('Contact Moneybaby') }
    it { should have_title(full_title('Contact')) }
  end
  
  describe "Life Insurance index" do
    before { visit life_insurances_path }
    
    it { should have_content('Life Insurance') }
    it { should have_title(full_title('Compare Cheap Life Insurance Policies in Malaysia')) }
  end
  
end