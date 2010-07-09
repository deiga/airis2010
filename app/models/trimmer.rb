class Trimmer < ActiveRecord::Base

  validates_presence_of :name, :address, :message => "Nimet täytyy syöttää"
  validates_format_of :ponumber, :with => /^[0-9]{5}$/, :message => "Postinumero ei kelpaa"
  validates_format_of :phone, :with => /^([0-9]{10}|\+[0-9]{12}|\(?[0-9]{2}\)?[0-9]{7})$/, :message => "Numeron tulee olla muodossa +358 +'9 numeroa' , 044 +'7 numeroa' tai (09) +'7 numeroa'"
  validates_format_of :homepage, :with => /^http:\/\/.*$/, :message => "Kotisivun URL tulee olla muotoa http://osoitteesi.com"
end
