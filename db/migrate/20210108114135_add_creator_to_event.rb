# frozen_string_literal: true

class AddCreatorToEvent < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :creator_id, :integer
    remove_column :events, :user_id
  end
end
