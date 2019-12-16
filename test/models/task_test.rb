require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = users(:one)
  end

  test 'should not save empty task' do
    task = Task.new

    task.save
    refute task.valid?
  end

  test 'should save valid note' do
    task = Task.new

    task.title = "Clean Room"
    task.date = "2019-12-11 16:34:59"
    task.user = @user

    task.save
    assert task.valid?
  end
end
