class StaticController < ApplicationController

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def index
    @news = Announcement.all(:conditions => "NOT notification", :order => "created_at DESC")
    @notices = Announcement.all(:conditions => "notification", :order => "created_at DESC")
  end

  def show
    render params[:page]
  end

  def invalid_page
    redirect_to root_path
  end

end
