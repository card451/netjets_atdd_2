require 'page-object'
require 'watir-webdriver'

include PageObject::PageFactory


When(/^Consumer submits valid new loan application$/) do
#todo
#  goto_new_loan_page
  #pending
  #Valid Name
  #Valid Address
  #Loan amount > 0 and < MAX

 end

Then(/^Confirmation message displayed$/) do
  #todo
  #goto_new_loan_page
  #pending
  #Confirmation message displays


 end

When(/^Consumer submits a new loan application with (.*)$/) do |invalid_criteria|
  #todo

  #goto_new_loan_page
def invalid_criteria
  #Invalid Criteria
  #Blank Name
  #Blank Address
  #Loan Amount <= 0
  #Loan Amount >= MAX
 end
end

Then(/^Invalid criteria error message is displayed$/) do
  #todo
  #pending
#Invalid Criteria error message displays
end
