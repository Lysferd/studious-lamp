class Schedule < ApplicationRecord
  before_save :set_timezone

  has_one :host
  has_many :visitors

  accepts_nested_attributes_for :host, allow_destroy: true
  accepts_nested_attributes_for :visitors, allow_destroy: true

  private
    def set_timezone
    end

end
