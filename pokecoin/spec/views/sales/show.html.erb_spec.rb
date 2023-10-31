require 'rails_helper'

RSpec.describe "sales/show", type: :view do
  before(:each) do
    assign(:sale, Sale.create!(
      from_user: nil,
      to_user: nil,
      pokemon: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
