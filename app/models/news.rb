class News < ActiveRecord::Base
  validates_presence_of :title, :description, :on => :create, :message => "can't be blank"
end
