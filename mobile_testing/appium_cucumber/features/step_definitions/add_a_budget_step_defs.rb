Given("I can open the app") do
  mainpage.check_homepage_displayed?
end


When("click on budget") do
  mainpage.find_budget_page
end

Then("the budget page opens") do
  expect(budgetpage.check_budgetpage_displayed?).to eq "You don't have any budgets at the moment. Click the + (plus) button up top to get started.\n\nBudget Watch lets you create budgets, then track spending during the month."
end

When("I enter a budget") do
  mainpage.find_budget_page
  budgetpage.click_add_budget_button
  addbudgetpage.fill_budget_page_name
  addbudgetpage.fill_budget_page_value
end

When("save the budget") do
    addbudgetpage.click_save_budget_button
end

Then("the budget is saved") do
   expect(addbudgetpage.budget_saved_budget_name_check).to eq "Peter Pan"
end

Then("can be seen on the homepage") do
  expect(addbudgetpage.budget_saved_budget_name_check).to eq "Peter Pan"
end
