class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :job_title
      t.string :company
      t.date :start_date
      t.date :end_date
      t.boolean :current
      t.references :user, index: true

      t.timestamps
    end
  end
end
