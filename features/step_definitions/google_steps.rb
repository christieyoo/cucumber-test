Given /^I open the Google search page$/ do
    visit('https://www.google.com')
		@google_home_page = GoogleHomePage.new
		@google_home_page.verify_page
end

Given /^I search for "(.*?)"$/ do |search_term|
	@google_home_page.enter_search search_term
	@google_results_page = GoogleResultsPage.new
end

Then /^I should see the results page$/ do
  @google_results_page.verify_page
end