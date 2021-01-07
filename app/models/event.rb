class Event < ApplicationRecord
  belongs_to :user
  has_many :attendees

  scope :past, -> { where('datetime < ?', Time.zone.now) }
  scope :future, -> { where('datetime >= ?', Time.zone.now) }
end
