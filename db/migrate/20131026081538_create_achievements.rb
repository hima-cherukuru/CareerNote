class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :title
      t.text :description
      t.date :achievement_date
      t.references :user, index: true
      t.references :position, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
