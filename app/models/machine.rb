class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  has_many :snacks

  def average_price
    self.snacks.average(:price)
  end
end
