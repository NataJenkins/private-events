class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :event
      t.text :members

      t.timestamps
    end
  end
end
