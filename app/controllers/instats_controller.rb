class InstatsController < ApplicationController
  def index
    @expenses = Expense.all
    @incomes = Income.all
    @excategories = Excategory.all
    @incategories = Incategory.all
  end

end
