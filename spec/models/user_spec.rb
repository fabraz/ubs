require 'rails_helper'

RSpec.describe User, type: :model do

	# Valid attributes for user
	let(:valid_attr){{
		user_name: "user",
		email: "user@email.com",
		password:"mudar123"
	}}
	let(:valid_attr_diff){{
		user_name: "user123",
		email: "user_99@email.com",
		password:"mudar123"
	}}

	# Invalid attributes for user
	let(:invalid_attr_email){{
		user_name: "user",
		email: "email",
		password:"mudar123"
	}}
	let(:invalid_attr_duplicate_name){{
		user_name: "user",
		email: "user_1100@email.com",
		password:"mudar123"
	}}
	let(:invalid_attr_duplicate_email){{
		user_name: "user332",
		email: "user@email.com",
		password:"mudar123"
	}}
	let(:invalid_attr_passw_less_then_8){{
		user_name: "user",
		email: "user555@email.com",
		password:"mudar12"
	}}

	# REVIEW: thats the best way for testing a model? by using "create!" method, or use "new"
	context "Validation" do

		context "when enter valid attributes" do
			subject(:valid_user){User.create!(valid_attr)}
			subject(:valid_user_diff){User.create!(valid_attr_diff)}
			it "should create a user" do
				expect(valid_user.valid?).to be_truthy
			end
			it "should create a second user" do
				expect(valid_user_diff.valid?).to be_truthy
			end
		end

		context "when enter invalid attributes" do
			subject(:erro_msg_email){"Validation failed: Email is invalid"}
			subject(:erro_msg_email_dpl){"Validation failed: Email has already been taken"}
			subject(:erro_msg_passwd){"Validation failed: Password is too short (minimum is 8 characters)"}
			it "should not create a user with invalid email" do
				expect{User.create!(invalid_attr_email)}.to raise_error(ActiveRecord::RecordInvalid, erro_msg_email)
			end
			# TODO: Raise a appropriate exception
			it "should not create a user with duplicated name" do
				User.create!(valid_attr)
				expect{User.create!(invalid_attr_duplicate_name)}.to raise_error(ActiveRecord::RecordInvalid)
			end
			it "should not create a user with duplicated email" do
				User.create!(valid_attr)
				expect{User.create!(invalid_attr_duplicate_email)}.to raise_error(ActiveRecord::RecordInvalid, erro_msg_email_dpl)
			end
			it "should not create a user with less then 8 char password" do
				expect{User.create!(invalid_attr_passw_less_then_8)}.to raise_error(ActiveRecord::RecordInvalid, erro_msg_passwd)
			end
		end
	end
end
