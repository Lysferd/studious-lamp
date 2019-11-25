class Host < ApplicationRecord
  belongs_to :schedule
  has_many :visitors, through: :schedule
end
