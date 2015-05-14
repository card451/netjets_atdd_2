require 'page-object'
require 'watir-webdriver'

class NewLoanPage
  include PageObject
  #todo
  text_field(:name, :id => 'id of name field')
  text_field(:address, :id => 'id of address field')
  text_field(:loan_amount, :id => 'id of loan amount field')
  button(:submit, :id => 'id of submit button')
  text_field(:confirmation_msg, :id => 'id of confirmation msg')
  text_field(:error_msg, :id => 'id of error msg')

end
