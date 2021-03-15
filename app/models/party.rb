class Party < ApplicationRecord
  validates :name, presence: true
  validates :date, presence: true
  validates :budget, presence: true
end
