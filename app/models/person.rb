class Person < ApplicationRecord
  before_save :add_job
  validates :first_name, :last_name, presence: true
  validates :last_name, uniqueness: { case_sensitive: false }
  validates :age, numericality: { greater_than: 18}

  def add_job
    self.job = "Programmer"
  end
end
