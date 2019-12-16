class Task < ApplicationRecord
  validates :title, :date, presence: true
  belongs_to :user

  scope :user_tasks, ->(user){ where(['user_id = ?', user.id])}
end
