require 'test_helper'

class NewsfeedTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Newsfeed.new.valid?
  end
end
