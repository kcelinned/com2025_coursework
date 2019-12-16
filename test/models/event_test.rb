require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @user = users(:one)
  end


  test 'should not save empty event' do
    event = Event.new

    event.save
    refute event.valid?
  end

  test 'should save valid event' do
    event = Event.new

    event.title = "Birthday"
    event.date = 2020-05-27
    event.user = @user

    event.save
    assert event.valid?
  end


end
