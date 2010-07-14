class StaticController < ApplicationController

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def index
    @news = Announcement.find_all_by_notification(false, :order => "created_at DESC")
    @notices = Announcement.find_all_by_notification(true, :order => "created_at DESC")
  end

  def show
    render :template => params[:page]
  end

protected

  def invalid_page
    render :nothing => true, :status => 404
  end

end
