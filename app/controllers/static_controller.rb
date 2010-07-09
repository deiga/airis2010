class StaticController < ApplicationController

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def index
    @news = Announcement.find_all_by_notification(false, :order => "created_at DESC")
    @notices = Announcement.find_all_by_notification(true, :order => "created_at DESC")
  end

  def show
    if params[:page] == 'tapahtumat'
      @events = Event.all
    elsif params[:page] == 'kasvattajat'
      @kennels = Kennel.find(:all, :order => "location DESC")
    end
    render params[:page]
  end

  def invalid_page
    redirect_to root_path
  end

end
