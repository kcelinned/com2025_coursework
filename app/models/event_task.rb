class EventTask < ApplicationRecord
  
  belongs_to :event
  validates :title, :event, presence: true

  scope :user_event_tasks, ->(user) {joins(:event).where(['user_id=?', user.id])}
end
