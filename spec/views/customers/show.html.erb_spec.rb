require 'spec_helper'

describe "customers/show" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :customer_no => "Customer No",
      :name => "Name",
      :address => "MyText",
      :other_customer_no => "Other Customer No"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Customer No/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Other Customer No/)
  end
end
