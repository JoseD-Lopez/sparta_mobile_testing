class MainPage
  def initialize (driver)
    @driver = driver
  end

  def check_homepage_displayed?
    @driver.find_element(:id, 'protect.budgetwatch:id/menu')
  end

  def find_budget_page
    @driver.find_element(:id, 'protect.budgetwatch:id/menu').click
  end
  
end
