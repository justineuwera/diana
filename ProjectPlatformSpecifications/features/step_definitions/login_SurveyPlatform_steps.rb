require 'pages/login_surveyPlatform_page.rb'

Given("Admin goes on Survey Platform") do
  @browser.goto('https://surveyplatform.staging.daliaresearch.com/admin/login')
  @login_SP = LoginPage.new(@browser)
end
When("Admin inserts the valid credential") do
  @login_SP.email = "justine.uwera@eteam.daliaresearch.com"
  @login_SP.password = "Josiane123"
  end 
And ("Clicks the sign in button") do
  @login_SP.sign_in
end
Then("survey platform main page is opened") do
	sleep(5)
	@message = @login_SP.username_holder_element.text
    expect(@message).to eq('Justine Uwera Logout')
end