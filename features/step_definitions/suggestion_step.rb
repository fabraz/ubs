Given(/^I am on the contact page$/) do
	visit('/suggestions/new')
end

When(/^I write "([^"]*)", "([^"]*)" and "([^"]*)"$/) do |who_suggests, respond_email, suggestion_text|
	@suggestion = Suggestion.create(who_suggests: who_suggests, respond_email: respond_email, suggestion_text: suggestion_text)
end

When(/^send the message clicking "([^"]*)" button$/) do
	click_button('Send Message')
end

Then(/^it should send the suggestion to the system$/) do
	@suggestion.save!
end

Then(/^should show a thank you page$/) do
	visit('/suggestions/thank_you')
end
