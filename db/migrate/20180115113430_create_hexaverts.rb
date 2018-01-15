class CreateHexaverts < ActiveRecord::Migration[5.1]
  def change
    create_table :hexaverts do |t|
      t.string :data
      t.string :encoded

      t.timestamps
    end
  end
end
