require 'pages/databucket_login.rb'

Given("admin opens Databucket login page") do
  @browser.goto('https://databucketplatform.staging.daliaresearch.com')
  @login_DBP = AdminPage.new(@browser) 
end 
When("admin enters valid credentials")do
  @login_DBP.email = "justine.uwera@eteam.daliaresearch.com"
  @login_DBP.password = "Josiane123"
  end 
And("admin clicks on sign in button") do
  @login_DBP.sign_in_admin
end
Then("admin is logged in databucketPlatform") do
@message = @login_DBP.username_holder_element.text
expect(@message).to eq('Justine Uwera Logout')
end