class CreateBreeders < ActiveRecord::Migration[7.0]
  def change
    create_table :breeders do |t|
      t.string :name
      t.text :description
      t.text :history

      t.timestamps
    end
  end
end
