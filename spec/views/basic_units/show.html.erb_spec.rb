require 'rails_helper'

RSpec.describe "basic_units/show", type: :view do
  before(:each) do
    @basic_unit = assign(:basic_unit, BasicUnit.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
