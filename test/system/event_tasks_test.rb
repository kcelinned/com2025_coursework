require "application_system_test_case"

class EventTasksTest < ApplicationSystemTestCase
  setup do
    @event_task = event_tasks(:one)
  end

  test "visiting the index" do
    visit event_tasks_url
    assert_selector "h1", text: "Event Tasks"
  end

  test "creating a Event task" do
    visit event_tasks_url
    click_on "New Event Task"

    check "Completed" if @event_task.completed
    fill_in "Event", with: @event_task.event_id
    fill_in "Title", with: @event_task.title
    click_on "Create Event task"

    assert_text "Event task was successfully created"
    click_on "Back"
  end

  test "updating a Event task" do
    visit event_tasks_url
    click_on "Edit", match: :first

    check "Completed" if @event_task.completed
    fill_in "Event", with: @event_task.event_id
    fill_in "Title", with: @event_task.title
    click_on "Update Event task"

    assert_text "Event task was successfully updated"
    click_on "Back"
  end

  test "destroying a Event task" do
    visit event_tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event task was successfully destroyed"
  end
end
