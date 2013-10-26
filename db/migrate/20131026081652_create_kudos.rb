class CreateKudos < ActiveRecord::Migration
  def change
    create_table :kudos do |t|
      t.text :content
      t.references :connection, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
