class ContentController < ApplicationController
  def index
    @pieces = Content.paginate(page: params[:page], per_page: 30)
  end

  def show
  end
end
