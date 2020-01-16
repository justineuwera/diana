class MainHeader
  include PageObject
  paragraph(:user_name, class: /navbar-text/)
  def pretty_name
end
