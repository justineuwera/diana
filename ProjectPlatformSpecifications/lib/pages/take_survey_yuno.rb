class TakeSurvey
  include PageObject
  text_field(:email,'name' => "email")
  button(:continue, "class": 'Button-hYXUXp AuthSubmit-eTPeRT jlbsvW' , :index => 0)
  # checkbox(:tick, "data-testid" => "test-checkbox")
  #div(:password, "class": 'Control-JagyP gKgNEd' )
  #button(:login, "class" => "Button-hYXUXp AuthSubmit-eTPeRT jlbsvW ", :index => 1)
  #div(:survey, "class" => "SurveyDurationStyled-cZWNkE fmuWsZ", :index => 0)
end