class Content < ActiveRecord::Base
  has_many :votes, dependent: :destroy

  def up_votes
    votes.where({value: 1}).count
  end

  def down_votes
    votes.where({value: 1}).count
  end

  def points
    votes.sum(:value)
  end

  def update_rank
    age_in_days = (created_at - Time.new(1970,1,1)) / (60 * 60 * 24) # 1 day in seconds
    new_rank = points + age_in_days
 
    update_attribute(:rank, new_rank)
  end


end