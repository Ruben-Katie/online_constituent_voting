require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "timeframe" do
    assert_equal "Upcoming", bills(:two).timeframe
    assert_equal "Past", bills(:one).timeframe
  end

  test "yes_no" do
    assert_equal "Yes", bills(:two).yes_no
    assert_equal "No", bills(:one).yes_no
  end

  test "" do

  end
end
