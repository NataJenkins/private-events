class Event < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_many :attendees

  scope :past, -> { where('datetime < ?', Time.zone.now) }
  scope :future, -> { where('datetime >= ?', Time.zone.now) }
end
