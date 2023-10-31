require 'rails_helper'

RSpec.describe "rates/edit", type: :view do
  let(:rate) {
    Rate.create!(
      rate: 1.5
    )
  }

  before(:each) do
    assign(:rate, rate)
  end

  it "renders the edit rate form" do
    render

    assert_select "form[action=?][method=?]", rate_path(rate), "post" do

      assert_select "input[name=?]", "rate[rate]"
    end
  end
end
