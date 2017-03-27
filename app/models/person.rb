class Person < ApplicationRecord
  validates :first_name, :last_name, presence: true
  validates :last_name, uniqueness: { case_sensitive: false }
  validates :age, numericality: { greater_than: 18}
end
