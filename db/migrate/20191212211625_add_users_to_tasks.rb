class AddUsersToTasks < ActiveRecord::Migration[5.2]
  def up
    add_reference :tasks, :user, index: true
    Task.reset_column_information
    user = User.first

    Task.all.each do |task|
      task.user_id = user.id
      task.save!
    end

    change_column_null :tasks, :user_id, false
    add_foreign_key :tasks, :users
  end

  def down
    remove_foreign_key :tasks, :users
    remove_reference :tasks, :user, index: true
  end
end
