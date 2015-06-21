require 'rails_helper'

RSpec.describe Suggestion, type: :model do

	# Modules for Suggestion that helps reduce duplication
	module DistrictHelpers
	end

	# Valid attributes for creating a Suggestion
	let(:valid_attr){{who_suggests: "Paulo", respond_email: "paulo@gmail.com", suggestion_text: "Suggestion"}}

	# Invalid attributes for creating a Suggestion
	let(:invalid_attr_no_name){{who_suggests: "", respond_email: "user@email.com", suggestion_text: "Suggestion"}}
	let(:invalid_attr_no_email){{who_suggests: "User", respond_email: "", suggestion_text: "Suggestion"}}
	let(:invalid_attr_no_suggestion){{who_suggests: "User", respond_email: "user@email.com", suggestion_text: ""}}

	# Describes suggestion unit test
	describe "Suggestion" do
		context "when enter with a valid inputs" do

			subject(:valid_suggestion){Suggestion.new(valid_attr)}
			it "should create a suggestion" do
				expect(valid_suggestion.valid?).to be_truthy
			end
		end

		context "when enter with a invalid inputs" do

			context "no name" do
				subject(:invalid_suggestion){Suggestion.new(invalid_attr_no_name)}
				it "should not create a suggestion" do
					expect(invalid_suggestion.valid?).to be_falsey
				end
			end

			context "no email" do
				subject(:invalid_suggestion){Suggestion.new(invalid_attr_no_email)}
				it "should not create a suggestion" do
					expect(invalid_suggestion.valid?).to be_falsey
				end
			end

			context "no suggestion" do
				subject(:invalid_suggestion){Suggestion.new(invalid_attr_no_suggestion)}
				it "should not create a suggestion" do
					expect(invalid_suggestion.valid?).to be_falsey
				end
			end
		end
	end
end
