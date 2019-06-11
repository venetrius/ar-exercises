class Employee < ActiveRecord::Base
  belongs_to :store

  before_validation :add_generated_password

  validates :store_id, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { 
    only_integer:             true,
    greater_than_or_equal_to: 40,
    less_than_or_equal_to:    200
  }

  private
    def add_generated_password
      self.password = ('a'..'z').to_a.shuffle[0,8].join
    end

end
