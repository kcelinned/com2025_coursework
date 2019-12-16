class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :date, null: false
      t.boolean :completed

      t.timestamps
    end
  end
end
