class CreateWhiskeys < ActiveRecord::Migration[5.2]
  def change
    create_table :whiskeys do |t|
      t.string :name
      t.string :distillery
      t.string :origin
      t.integer :age
      t.string :type
      t.integer :proof
      t.integer :price

      t.timestamps
    end
  end
end
