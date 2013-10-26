class CreateReminders < ActiveRecord::Migration
  def change
    create_table :reminders do |t|
      t.string :frequency
	  t.references :reminder
      t.timestamps
    end

    add_index :reminder_id
  end
end
