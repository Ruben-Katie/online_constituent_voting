class Vote < ActiveRecord::Base
  belongs_to :bill
  def yes_no
    response ? "Yes" : "No"
  end
end
