class Event < ApplicationRecord

  has_many :users, through: :attendances
  validates :start_date, presence: true, if: :event_length
  validates :duration, presence: true, numericality: {greather_than: 0}, if: :multiple_of_5
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, numericality: {greather_than: 1, less_than: 1000}
  validates :location, presence: true

def event_length

  if start_date < DateTime.now
    return "erreur"
  end

end

def multiple_of_5

  if duration % 5 == 0
    return true
  else
    return false
  end

end

end
