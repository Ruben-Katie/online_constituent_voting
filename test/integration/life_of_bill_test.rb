require 'test_helper'

class LifeOfBillTest < ActionDispatch::IntegrationTest
  # setup do
  #   @bill = bills(:two)
  # end

  test "life of the bill" do
    get root_path
    assert_response :success
    assert_template "bills/index"
    assert_select 'a#go-to-new-bill'
    get new_bill_path
    assert_response :success
    assert_template "bills/new"
    # assert_difference('Bill.count') do
    #   post "bills/create", bill: { name: @bill.name, real_vote: @bill.real_vote, staff_id: @bill.staff_id, status: @bill.status }
    # end
    # assert_redirected_to bill_path(assigns(:bill))
  end
end
