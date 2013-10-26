class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.date :target_date
      t.text :description
      t.boolean :completed
      t.references :user, index: true

      t.timestamps
    end
  end
end
