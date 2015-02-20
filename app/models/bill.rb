class Bill < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true
  def timeframe
    status ? "Upcoming" : "Past"
  end

  def yes_no
    real_vote ? "Yes" : "No"
  end
end
