require 'spec_helper'

describe "payments/show" do
  before(:each) do
    @payment = assign(:payment, stub_model(Payment,
      :compound_id => 1,
      :amount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/9.99/)
  end
end
