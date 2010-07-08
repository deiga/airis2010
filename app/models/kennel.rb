class Kennel < ActiveRecord::Base

  validates_presence_of :kennel_name, :owner_name, :phone
  validates_format_of :email, :allow_nil => true, :allow_blank => true, :with => /^.*@.*\..*$/
end
