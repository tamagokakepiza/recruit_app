class Corporate < ApplicationRecord
  validates :name, presence: true
  validates :industry, presence: true
end
