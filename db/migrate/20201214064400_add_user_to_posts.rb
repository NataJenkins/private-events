class AddUserToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user, :text
  end
end
