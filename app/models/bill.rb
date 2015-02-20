class Bill < ActiveRecord::Base
  has_many :votes

  validates :name, presence: true
  def timeframe
    status ? "Upcoming" : "Past"
  end

  def yes_no
    real_vote ? "Yes" : "No"
  end

  def popular_vote
    total_votes = votes.count
    return "Not enough information yet" if total_votes == 0
    yes_votes = votes.where(response: true).count.to_f
    no_votes = votes.where(response: false).count.to_f
    result = yes_votes / total_votes
    if result > 0.5
      return "Yes"
    elsif result == 0.5
      return "A tie so far"
    else
      return "No"
    end
  end
end
