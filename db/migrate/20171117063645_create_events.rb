class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :ocassion
      t.string :place
      t.text :address
      t.date :date

      t.timestamps
    end
  end
end
