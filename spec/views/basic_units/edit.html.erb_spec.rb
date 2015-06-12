require 'rails_helper'

RSpec.describe "basic_units/edit", type: :view do
  before(:each) do
    @basic_unit = assign(:basic_unit, BasicUnit.create!())
  end

  it "renders the edit basic_unit form" do
    render

    assert_select "form[action=?][method=?]", basic_unit_path(@basic_unit), "post" do
    end
  end
end
