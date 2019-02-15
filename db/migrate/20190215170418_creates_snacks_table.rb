class CreatesSnacksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.integer :machine_id
      t.string :name
      t.integer :price
    end
  end
end
