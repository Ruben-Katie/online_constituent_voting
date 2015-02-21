require 'test_helper'

class BillTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "timeframe" do
    assert_equal "Past", bills(:one).timeframe
    assert_equal "Upcoming", bills(:two).timeframe
    assert_equal "Upcoming", bills(:three).timeframe
    assert_equal "Past", bills(:four).timeframe
  end

  test "yes_no based on status" do
    assert_equal "No", bills(:one).yes_no
    assert_equal " ", bills(:two).yes_no
    assert_equal " ", bills(:three).yes_no
    assert_equal "Yes", bills(:four).yes_no
  end

  test "check if bill has title" do
    bill = Bill.new(status: true, staff_id: 1, real_vote: true)
    assert_not bill.save
  end


end
