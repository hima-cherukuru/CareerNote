class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :linkedin
      t.string :user_name
      t.datetime :last_login
      t.references :user, index: true
      t.references :reminder
      t.timestamps
    end
  end
end
