class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :presence => true, :length => {minimum: 3, too_short: "Must have at least %{count} letters"}
  validates :address, :presence => true
  validates :description, :presence => true
end
