class Bill < ActiveRecord::Base
  def timeframe
    status ? "Upcoming" : "Past"
  end

  def yes_no
    real_vote ? "Yes" : "No"
  end
end
