class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.date :date, null: false
      t.time :start
      t.time :end
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
