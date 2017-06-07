Given(/^I visit the login page$/) do
	visit('/users')
end

When(/^I log in with "([^"]*)" and "([^"]*)"$/) do |username, password|
	#Capybara.string(page.body).has_selector?('title', text: "Είσοδος Χρήστη - Σύστημα Διαχείρισης WebPOS")
	page.fill_in 'login', :with => username
	page.fill_in 'password', :with	=> password
	find('input[type="submit"]').click
end

Then(/^I should be on main page$/) do
#	current_path.should == "/users/"
	expect(page).to have_current_path("/users/main.php")
end