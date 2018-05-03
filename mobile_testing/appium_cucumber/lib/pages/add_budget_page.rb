class AddBudgetPage

  def initialize (driver)
    @driver = driver
  end

  BUDGET_PAGE_FIND = 'protect.budgetwatch:id/budgetNameEdit'

  def fill_budget_page_name
    @driver.find_element(:id, BUDGET_PAGE_FIND).send_keys("Peter Pan")
  end

  def fill_budget_page_value
    @driver.find_element(:id, 'protect.budgetwatch:id/valueEdit').send_keys("100")
  end

  def click_save_budget_button
    @driver.find_element(:id, 'protect.budgetwatch:id/action_save').click
  end

  def budget_saved_budget_name_check
    @driver.find_element(:id, 'protect.budgetwatch:id/budgetName').text
  end

end
