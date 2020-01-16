require 'pages/fake_publisher_page.rb'
require 'pages/completion_survey_page.rb'
require 'watir'

Given('user is on the completion,rejection survey') do
  @browser.goto("https://opinion.yunosurveys.com/survey/b5930d10-f8ba-0137-32b6-02e3c98356e2/screen/S1?publisher_user_id=07b59010-86d2-0131-c9a9-0a424708edaa&panel_user_id=PANEL_USER_TEST_43d672b0-0ab3-0138-be6c-02b9526e0142&panel_user_id_kind=PANEL_USER_KIND_TEST&pparam_offer_click_id=OFFER_CLICK_TEST_43d672b0-0ab3-0138-be6c-02b9526e0142&pparam_provider_user_id=%5Bprovider_user_uuid%5D&is_test=true")
  @browser.cookies.clear
  @completion_survey = CompletionSurvey.new(@browser)
end
When('the user selects the completion option') do
  @completion_survey.complete_survey_element.click
end
When('user selects the submit button') do
  @completion_survey.submit_element.click
end
Then('user is on the Thank you page') do
  @completion_survey.thankyou_page_element.wait_until(&:present?)
end