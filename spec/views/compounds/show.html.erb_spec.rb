require 'spec_helper'

describe "compounds/show" do
  before(:each) do
    @compound = assign(:compound, stub_model(Compound,
      :compound_code => "Compound Code",
      :location => "Location",
      :compound_type => "Compound Type",
      :customer_id => "Customer",
      :amount => "9.99",
      :description => "Description",
      :status => "Status"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Compound Code/)
    rendered.should match(/Location/)
    rendered.should match(/Compound Type/)
    rendered.should match(/Customer/)
    rendered.should match(/9.99/)
    rendered.should match(/Description/)
    rendered.should match(/Status/)
  end
end
