class StaticController < ApplicationController

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def index
    @News = Announcement.all(:conditions => "notification = 0", :order => "created_at DESC")
  end

  def show
    render params[:page]
  end

  def invalid_page
    redirect_to root_path
  end

end
