CSV_DIR = "public/csv"
CSV_FILE = "ubs_test.csv"

Given(/^I am on the new parse page$/) do
	visit('/parses/new')
end

When(/^I upload a csv file$/) do
	attach_file(:file, File.join(Rails.root, CSV_DIR, CSV_FILE))
end

When(/^I press importar button$/) do
	click_button('importar')
end

Then(/^the ubs was created$/) do
end

Then(/^I should see the file upload page again$/) do
	visit('/parses/new')
end

When(/^I upload a different extension file$/) do
   attach_file(:file, File.join(Rails.root, CSV_DIR, CSV_FILE))	
end

Then(/^the ubs was not created$/) do
end

Then(/^I should see an error message on the parse new page$/) do
	
end
