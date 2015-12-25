Given(/^I am on the login page$/) do
  visit "http://localhost:63342/simple_php_login/login_view.html"
end

When(/^I input the correct username$/) do
  find_field("username").set("test")
end

When(/^the correct password$/) do
  find_field("password").set("test")
end

When(/^click the login button$/) do
  click_button('submit')
end

Then(/^I should see a correct login message$/) do
  expect(page).to have_content('login successful')
end
