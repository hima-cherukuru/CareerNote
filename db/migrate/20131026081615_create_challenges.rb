class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.text :context
      t.text :solution
      t.text :lesson
      t.string :headline
      t.references :position, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
