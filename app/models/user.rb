class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable, :confirmable and :activatable

  # Setup accessible (or protected) attributes for your model
  has_many :created_events, foreign_key: "creator_id", class_name: "Event"
  has_many :attendees
  has_many :attended_events, through: :attendees, foreign_key: "event_id", source: :event
end
