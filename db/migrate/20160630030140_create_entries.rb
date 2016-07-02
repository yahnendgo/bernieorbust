class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :fname
      t.string :lname
      t.string :state
      t.string :email
      t.string :ans1
      t.string :ans2

      t.timestamps null: false
    end
  end
end
