class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3}
  validates :annual_revenue, numericality: { 
    only_integer:             true,
    greater_than_or_equal_to: 0, prepend: true
  }
  before_destroy :ensure_no_employees

  def ensure_no_employees
    if self.employees.any?
      errors[:base] << "cannot delete a store which has one or more employees"
      throw :abort
    end
  end
end
