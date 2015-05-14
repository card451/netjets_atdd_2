require 'page-object'
require 'watir-webdriver'

include PageObject::PageFactory


When(/^Consumer submits valid new loan application$/) do
#todo
  goto_ourbank
  @loan_confirmation_message = submit_new_loan_application
 end

Then(/^Confirmation message displayed$/) do
  #todo
  expect(@loan_confirmation_message).to eq 'Confirmation Message text'
 end

When(/^Consumer submits a new loan application with 0 loan amount$/) do
  #todo
  goto_ourbank
  @error_loan_msg = submit_0_loan_amount_application
end

When(/^Consumer submits a new loan application with blank name$/) do
  #todo
  goto_ourbank
  @error_loan_msg = submit_blank_name_application
end

When(/^Consumer submits a new loan application with blank address$/) do
  #todo
  goto_ourbank
  @error_loan_msg = submit_blank_address_application
end

When(/^Consumer submits a new loan application with max loan amount$/) do
  #todo
  goto_ourbank
  @error_loan_msg = submit_max_loan_amount_application
end

Then(/^Invalid criteria error message is displayed$/) do
  #todo
  #pending
expect(@error_loan_msg).to eq 'Please enter valid values for loan application'
end

