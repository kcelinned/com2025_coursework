require 'test_helper'

class EventTaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @event = events(:one)
  end

  test 'should not save empty task' do
    event_task = EventTask.new

    event_task.save
    refute event_task.valid?
  end

  test 'should save valid task' do
    event_task = EventTask.new

    event_task.title = "Get Birthday Cake"
    event_task.event = @event

    event_task.save
    assert event_task.valid?
  end
end
