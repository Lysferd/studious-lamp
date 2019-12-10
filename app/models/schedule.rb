class Schedule < ApplicationRecord

  belongs_to :host
  has_many :visitors

  accepts_nested_attributes_for :host, allow_destroy: true
  accepts_nested_attributes_for :visitors, allow_destroy: true

  def host_attributes= attributes
    if attributes[:id].present?
      self.host = Host.find attributes[:id]
    end

    super
  end

end
