class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :frequency
      t.references :user, index: true

      t.timestamps
    end
  end
end
