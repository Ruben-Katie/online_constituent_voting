require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can save vote" do
    assert_difference "Vote.count", 1 do
      Vote.create(constituent_id: 1, bill_id: 1, response: true)
    end
  end
  

end
