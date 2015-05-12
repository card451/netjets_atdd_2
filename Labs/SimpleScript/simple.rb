require 'watir-webdriver'

browser = Watir::Browser.new :chrome

browser.goto ('http://manifestsc.com')

#TODO
browser.a(:text => 'ABOUT US').click


