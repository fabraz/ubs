require 'rails_helper'

RSpec.describe "BasicUnits", type: :request do
  describe "GET /basic_units" do
    it "works! (now write some real specs)" do
      get basic_units_path
      expect(response).to have_http_status(200)
    end
  end
end
