require 'rails_helper'

RSpec.describe "basic_units/index", type: :view do
  before(:each) do
    assign(:basic_units, [
      BasicUnit.create!(),
      BasicUnit.create!()
    ])
  end

  it "renders a list of basic_units" do
    render
  end
end
