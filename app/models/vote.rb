class Vote < ActiveRecord::Base
  belongs_to :content
  belongs_to :user
  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }

  after_save :update_content

  def up_vote?
    value == 1
  end

  def down_vote?
    value == -1
  end

  private

  def update_content
    content.update_rank
  end
end
