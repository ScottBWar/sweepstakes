require 'chronic'

class Contestant < ActiveRecord::Base


  validates :firstname, :presence => true, :length => {:maximum => 30}

  validates :lastname, :presence => true, :length => {:maximum => 30}

  validates :email, :birthday, :zipcode, :provider,  :presence => true

  validates :email, :uniqueness => true

  validates :zipcode, zipcode: { country_code: :us }

  def birthday=(datevalue)
    d = Date.strptime(datevalue,"%d/%m/%y")
    if d > Date.today
      d = Date.new(d.year - 100, d.month, d.mday)
    end
    write_attribute(:birthday, Chronic::parse(d, :context => :past) )
  end

end
