class CreateManages < ActiveRecord::Migration[6.1]
  def change
    create_table :manages do |t|
      t.string :name
      t.string :place
      t.integer :number

      t.timestamps
    end
  end
end
