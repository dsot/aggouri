# Given(/^I visit the projects page$/) do
	# visit('/users/main.php')
# end

##################
### DOCKER RUN ###
##################
# docker run --link epos_php_1:127.0.0.1 --name ag1 --rm --network epos_default aggouri2
# TODO: docker-compose?

Given (/^I am logged in$/) do 
	visit('/users')
	page.fill_in 'login', :with => "dsot"
	page.fill_in 'password', :with	=> "password"
	find('input[type="submit"]').click
	expect(page).to have_current_path("/users/main.php")
end

When (/^I pick project "([^"]*)"$/) do |project|
	expect(page).to have_current_path("/users/main.php")
	find('select', :class => "form-control").find(project).click
	find('input[type="submit"]').click
end

And (/^I click on "([^"]*)"$/) do |link|
	expect(page).to have_link(link, :href=>"main.php?selid=1")
    click_on(link)
	url = URI.parse(current_url).to_s
	visit('users/main.php?selid=1')
	#current_path.should == '/selid=1/'
	#expect(page).to have_current_path(/selid=1/)
end

And (/^I choose user "([^"]*)"$/) do |user|
	#expect(page).to have_current_path("/users/main.php?selid=1")
	#find(:xpath, "//tr[td[contains(.,user)]]/td/a", :text => user).click
	find('tr', text: user).click # should have_content(email)
	#find_link("2").click
end	

Then (/^I should see their "([^"]*)"$/) do |info|
	tr = page.find(:xpath, ".//tr[./th[text()=info]]")
	expect(tr).to have_css('td', text: '5429901019890 1')
end

Then (/^I should be on main$/) do 
	expect(current_url).to eq("http://172.19.0.2/users/main.php?selid=1")
	#page.should have_current_path(main_path(selid: 1))
end

Then (/^I find link$/) do 
	puts(current_url)
	find('tr', text: "fdasf asdfsdfsdf")
end