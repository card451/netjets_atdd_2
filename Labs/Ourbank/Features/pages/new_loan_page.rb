require 'page-object'
require 'watir-webdriver'

def goto_new_loan_page
  include PageObject
 # browser.goto ('http://www.google.com')
  puts 'True'
  page_url('http://www.google.com')

end
