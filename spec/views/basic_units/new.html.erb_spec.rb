require 'rails_helper'

RSpec.describe "basic_units/new", type: :view do
  before(:each) do
    assign(:basic_unit, BasicUnit.new())
  end

  it "renders new basic_unit form" do
    render

    assert_select "form[action=?][method=?]", basic_units_path, "post" do
    end
  end
end
