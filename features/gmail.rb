require 'watir'
require 'cucumber'
Given (/^Launch google page$/) do
  @browser = Watir::Browser.new
  @browser.driver.manage.window.maximize
  @browser.goto("https://www.google.com/intl/en-GB/gmail/about/#")
  #sleep(10)
end
When(/^Click on Gmail link$/) do
  @browser.goto("https://accounts.google.com/AccountChooser?service=mail&amp;continue=https://mail.google.com/mail/")
  #sleep(10 )
end
And(/^Enter user name$/) do
 @browser.text_field(name: 'identifier').set 'edigasushma@gmail.com'
@browser.span(:text => 'Next').click
sleep(5)
end
#And(/^Enter Password$/) do
# @browser.text_field(name: 'password').set 'abcabc#'
# @browser.button(id: 'passwordNext').click
# @browser.checkbox(id: 'c7' ).set false
# #sleep(5)
#end
#And(/^Click on signup button$/) do
# @browser.button(id: 'signIn').click
# #sleep(5)
#end
Then(/^User is able to login successful$/) do
  puts"Test ran successfully"
  #@browser.button(id: 'gb').click
  #sleep(5)
  #puts browser.button(id: 'gb_71').text
  #sleep(5)
  #@browser.button(id: 'gb_71').click
  #sleep(5)
end