# frozen_string_literal: true

class AddUserToEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :user
  end
end
