class CreateHatcheries < ActiveRecord::Migration[7.0]
  def change
    create_table :hatcheries do |t|
      t.string :name
      t.text :description
      t.text :history

      t.timestamps
    end
  end
end
