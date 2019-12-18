class Host < ApplicationRecord

  has_many :schedules, dependent: :destroy
  has_many :visitors, through: :schedule

end
