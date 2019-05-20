class CreateMarks < ActiveRecord::Migration[5.2]
  def change
    create_table :marks do |t|
      t.integer :user_id
      t.integer :user_id
      t.integer :whiskey_id
      t.integer :score
      t.text :comments

      t.timestamps
    end
  end
end
