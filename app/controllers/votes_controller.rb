class VotesController < ApplicationController
  
  before_action :load_post_and_vote

  def up_vote
    update_vote!(1)
    redirect_to :back
  end

  def down_vote
    update_vote!(-1)
    redirect_to :back
  end

  def delete_vote
    @vote.destroy
    redirect_to :back
  end

  private

  def load_post_and_vote
    @content = Content.find(params[:content_id])

    @vote = @content.votes.where(user_id: current_user.id).first  
  end

  def update_vote!(new_value)
    if @vote
      @vote.update_attribute(:value, new_value)
    else
      @vote = current_user.votes.build(value: new_value, content: @content)
      @vote.save
    end
  end

end