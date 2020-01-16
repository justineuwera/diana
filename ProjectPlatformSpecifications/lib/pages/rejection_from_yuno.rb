class RejectionSurvey
  include PageObject
  div(:rejection, 'class': 'option', :index => 1)
  button(:submit, 'data-testid' => 'go-to-next')
  h1(:termination_page, 'text': 'Hmm ...')
end