Given(/^I visit the home page$/) do
    visit "/"
end

Given(/^I should see the app title$/) do
  response.should have_selector("title:contains('MyTodo List')")
end

Given(/^I should see the links for actions$/) do
      response.should have_selector("li:contains('About')")
      response.should have_selector("li:contains('Tasks')")
      response.should have_selector("li:contains('Calendar')")
      response.should have_selector("h4:contains('List of Todos')")
end
