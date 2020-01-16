require 'pages/login_projectPlatform.rb' 

Given("Admin goes on project platform") do
  @browser.goto('https://projectplatform.staging.daliaresearch.com/admin/login')
  @login_PP = LoginProject.new(@browser)
end
When("the Admin inserts the valid credentials") do
  @login_PP.email = "justine.uwera@eteam.daliaresearch.com"
  @login_PP.password = "Josiane123"
  end 
And("hits the sign in button") do
  @login_PP.sign_in
end
Then("project platform main page is opened") do
    expect(@login_PP.username_holder).to eq('Justine Uwera Logout')
end