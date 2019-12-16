class LinkUsers < ActiveRecord::Migration[5.2]
  def up
    add_reference :events, :user, index: true
    Event.reset_column_information
    user = User.first

    Event.all.each do |event|
      event.user_id = user.id
      event.save!
    end

    change_column_null :events, :user_id, false
    add_foreign_key :events, :users
  end

  def down
    remove_foreign_key :events, :users
    remove_reference :events, :user, index: true
  end
end
