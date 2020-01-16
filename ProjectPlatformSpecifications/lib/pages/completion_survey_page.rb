class CompletionSurvey
  include PageObject
  div(:complete_survey,"class": 'option')
  button(:submit, "data-testid" => "go-to-next")
  h1(:thankyou_page, "text": 'All done!')
end