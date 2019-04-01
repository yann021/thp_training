class Event < ApplicationRecord
	belongs_to :user

	validates :start_date, presence: true
	validates :location, presence: true
	validates_length_of :title, :within => 5..140, :too_long => "pick a shorter title", :too_short => "pick a longer title"
	validates_length_of :description, :within => 20..1000, :too_long => "pick a shorter description", :too_short => "pick a longer description"

	validate :duration_mul5
	validate :price_1_1000
  
  private
  def duration_mul5
    if duration % 5 != 0
      errors.add(:duration, "is not a multiple of 5 !!!")
    end
  end
  def price_1_1000
    if price < 1
      errors.add(:price, "too cheap !!!")
    elsif price > 1000
      errors.add(:price, "too expensive !!!")
    end
  end
end
