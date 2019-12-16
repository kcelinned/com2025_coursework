class CreateEventTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :event_tasks do |t|
      t.belongs_to :event, foreign_key: true, null: false
      t.text :title, null: false
      t.boolean :completed

      t.timestamps
    end
  end
end
