require 'rails_helper'

RSpec.describe State, type: :model do

	# Valid attributes for State
 	let(:valid_attr) {{state_acronym: "ST", state_name: "State"}}

 	# Invalid attributes for State
 	# Presence
 	let(:invalid_attr_name_nil) {{state_acronym: "ST", state_name: nil}}
 	let(:invalid_attr_name_blank) {{state_acronym: "ST", state_name: ""}}
 	let(:invalid_attr_acronym_nil) {{state_acronym: nil, state_name: "State"}}
 	let(:invalid_attr_acronym_blank) {{state_acronym: "", state_name: "State"}}
 	# Duplication
 	let(:invalid_attr_dpl_name) {{state_acronym: "STT", state_name: "State"}}
 	let(:invalid_attr_dpl_acronym) {{state_acronym: "ST", state_name: "State2"}}

	describe "association" do
		context "with a valid city" do
			it "should create a association between state and city"
		end

		context "with multiple valid cities" do
			it "should create a association between state and city"
		end
	end

	describe "validation" do

		context "with valid attributes" do
			subject(:valid_state){State.new(valid_attr)}
			it "should create a new state" do
				expect(valid_state.valid?).to be_truthy
			end
		end

		context "with invalid attributes" do
			context "nil attribute" do
				subject(:invalid_state){State.new(invalid_attr_name_nil)}
				it "should not create a state" do
					expect(invalid_state.valid?).to be_falsey
				end

				subject(:invalid_state){State.new(invalid_attr_name_blank)}
				it "should not create a state" do
					expect(invalid_state.valid?).to be_falsey
				end
			end

			context "blank attribute" do
				subject(:invalid_state){State.new(invalid_attr_name_blank)}
				it "should not create a state" do
					expect(invalid_state.valid?).to be_falsey
				end

				subject(:invalid_state){State.new(invalid_attr_acronym_blank)}
				it "should not create a state" do
					expect(invalid_state.valid?).to be_falsey
				end
			end
		end

		context "with duplication" do
			subject(:valid_state){State.new(valid_attr)}
			subject(:invalid_state){State.new(invalid_attr_dpl_name)}
			it "should not create a state" do
				expect(invalid_state.valid?).to be_falsey
			end

			subject(:invalid_state){State.new(invalid_attr_dpl_acronym)}
			it "should not create a state" do
				expect(invalid_state.valid?).to be_falsey
			end
		end
	end
end
