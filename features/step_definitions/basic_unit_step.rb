Given(/^I am on the search page$/) do
  visit('/search')
end

When(/^I write "([^"]*)"$/) do |basic_unit_name|
	@ubs = BasicUnit.find_by_estab_name(basic_unit_name)
end

When(/^press the "([^"]*)" button$/) do |search|
	click_button(search)
end


Then(/^I shoul see a message "([^"]*)"$/) do |message|
  page.should have_content "There is no basic unit with the given name"
end

