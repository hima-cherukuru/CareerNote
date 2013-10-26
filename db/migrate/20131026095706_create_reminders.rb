class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :frequency
      t.timestamps
    end
  end
end
