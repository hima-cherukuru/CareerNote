class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.text :question
      t.text :answer
      t.references :user, index: true

      t.timestamps
    end
  end
end
