class Event < ApplicationRecord
  extend SimpleCalendar

  validates :title, :date, presence: true
  has_many :event_tasks, dependent: :destroy
  belongs_to :user

  scope :user_events, ->(user){ where(['user_id = ?', user.id])}

  def start_time
    self.event.date
  end

end
