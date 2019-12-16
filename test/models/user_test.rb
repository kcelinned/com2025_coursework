require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save invalid user' do
    user = User.new
    user.save

    refute user.valid?
  end

  test 'should save valid user' do
    user = User.new
    user.email = 'justin@weird.com'
    user.password = 'nothing'

    user.save
    assert user.valid?
  end



end
