require 'rails_helper'

RSpec.describe "rates/new", type: :view do
  before(:each) do
    assign(:rate, Rate.new(
      rate: 1.5
    ))
  end

  it "renders new rate form" do
    render

    assert_select "form[action=?][method=?]", rates_path, "post" do

      assert_select "input[name=?]", "rate[rate]"
    end
  end
end
