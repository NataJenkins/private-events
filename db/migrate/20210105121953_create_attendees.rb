# frozen_string_literal: true

class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
      t.string :user_id
      t.string :event_id

      t.timestamps
    end
  end
end
