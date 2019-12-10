class Host < ApplicationRecord

  has_many :schedules
  has_many :visitors, through: :schedule

end
