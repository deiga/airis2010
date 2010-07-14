class StaticController < ApplicationController

  before_filter :ensure_valid, :except => :index

  def index
    @news = Announcement.find_all_by_notification(false, :order => "created_at DESC")
    @notices = Announcement.find_all_by_notification(true, :order => "created_at DESC")
  end

  def show
    render :template => current_page # params[:page]
  end

protected

  def ensure_valid
    unless template_exists?(current_page)
      render :nothing => true, :status => 404 and return false
    end
  end

  def current_page
    "static/#{File.join(*params[:page]).downcase}"
  end

  def template_exists?(path)
    view_paths.find_template(path, response.template.template_format)
  rescue ActionView::MissingTemplate
    false
  end

end
