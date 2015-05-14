require 'page-object'
require 'watir-webdriver'

class Ourbank
  #todo
  include PageObject
  page_url('https://www.huntington.com')
 button(:loan_application, :id => 'loan ID')
  button(:new_loan, :id => 'new loan ID')

end