class Visitor < ApplicationRecord
  belongs_to :schedule
  has_many :hosts, through: :schedule
end
