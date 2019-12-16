require 'test_helper'

class EventTasksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @event_task = event_tasks(:one)
    @event = events(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get event_tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_event_task_url(event_id: @event)
    assert_response :success
  end 

  test "should create event_task" do
    assert_difference('EventTask.count') do
      post event_tasks_url, params: { event_task: { completed: @event_task.completed, event_id: @event_task.event_id, title: @event_task.title } }
    end

    assert_redirected_to event_task_url(EventTask.last)
  end

  test "should show event_task" do
    get event_task_url(@event_task)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_task_url(@event_task)
    assert_response :success
  end

  test "should update event_task" do
    patch event_task_url(@event_task), params: { event_task: { completed: @event_task.completed, event_id: @event_task.event_id, title: @event_task.title } }
    assert_redirected_to event_task_url(@event_task)
  end

  test "should destroy event_task" do
    assert_difference('EventTask.count', -1) do
      delete event_task_url(@event_task)
    end

    assert_redirected_to event_tasks_url
  end
end
