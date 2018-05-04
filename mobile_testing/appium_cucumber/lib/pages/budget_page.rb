class Budgetpage
  def initialize (driver)
    @driver = driver
  end

  def check_budgetpage_displayed?
    @driver.find_element(:id, 'protect.budgetwatch:id/helpText').text
  end

  def click_add_budget_button
    @driver.find_element(:id, 'protect.budgetwatch:id/action_add').click
  end

end
