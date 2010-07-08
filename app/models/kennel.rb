class Kennel < ActiveRecord::Base

  validates_presence_of :kennel_name, :owner_name, :message => "Nimet täytyy syöttää"
  validates_format_of :email, :allow_nil => true, :allow_blank => true, :with => /^.*@.*\..*$/, :message => "Sähköpostin tulee olla muodossa käyttäjänimi@palvelin.maapääte"
  validates_format_of :phone, :with => /^([0-9]{10}|\+[0-9]{12}|[0-9]{9})$/, :message => "Numeron tulee olla muodossa +358 +'9 numeroa' , 044 +'7 numeroa' tai 09 +'7 numeroa'"
  validates_format_of :homepage, :with => /^http:\/\/.*$/, :message => "Kotisivun URL tulee olla muotoa http://osoitteesi.com"
end
