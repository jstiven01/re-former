# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: 'damarisrpo', email: 'damarisrpo@gmail.com', password: '111111')
  end

  test 'Username should be present' do
    @user.username = ''
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = ''
    assert_not @user.valid?
  end

  test 'password should be present' do
    @user.password = ''
    assert_not @user.valid?
  end
end
