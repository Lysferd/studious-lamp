class Schedule < ApplicationRecord
  has_one :host
  has_many :visitors

  accepts_nested_attributes_for :host, allow_destroy: true
  accepts_nested_attributes_for :visitors, allow_destroy: true
end
