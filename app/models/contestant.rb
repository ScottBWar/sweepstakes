require 'chronic'

class Contestant < ActiveRecord::Base


  validates :firstname, :presence => true, :length => {:maximum => 30}

  validates :lastname, :presence => true, :length => {:maximum => 30}

  validates :email, :birthday, :zipcode, :provider,  :presence => true

  validates :email, :uniqueness => true

  validates :zipcode, zipcode: { country_code: :us }


  def birthday=(datevalue)
    d = Chronic::parse(datevalue)
    if d > Date.today
      d = Date.new(d.year - 100, d.month, d.mday)
    end
    write_attribute(:birthday, d)
  end

end
