class Contestant < ActiveRecord::Base

	validates :firstname, :presence => true, :length => {:maximum => 30}

	validates :lastname, :presence => true, :length => {:maximum => 30}

	validates :email, :birthday, :zipcode, :provider,  :presence => true

	validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

  validates :email, :uniqueness => true

  validates :zipcode, zipcode: { country_code: :us }

end
