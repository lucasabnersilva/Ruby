require 'rails_helper'

RSpec.describe "rates/show", type: :view do
  before(:each) do
    assign(:rate, Rate.create!(
      rate: 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
  end
end
