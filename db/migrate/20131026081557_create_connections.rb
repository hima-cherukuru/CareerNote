class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :job_title
      t.string :company
      t.string :linked_in
      t.references :user, index: true
      t.references :achievement, index: true

      t.timestamps
    end
  end
end
