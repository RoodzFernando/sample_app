require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Exam,ple User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
