require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "account_activation" do
    user = users(:roodz)
    mail = UserMailer.account_activation(user)
    assert_equal "Account activation", mail.subject
    assert_equal ["roodz@mic.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "password_reset" do
    user = users(:roodz)
    user.reset_token = User.new_token
    mail = UserMailer.password_reset(user)
    assert_equal "Password Reset", mail.subject
    assert_equal ["roodz@mic.org"], mail.to
    assert_equal ["noreply@example.com"], mail.from
    # assert_match "Hi", mail.body.encoded
  end

end
