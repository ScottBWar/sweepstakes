class Contestant < ActiveRecord::Base

	validates :firstname, :presence => true, :length => {:maximum => 30}

	validates :lastname, :presence => true, :length => {:maximum => 30}

	validates :email, :presence => true

	validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/

	validates :birthday, :presence => true

	validates :zipcode, :presence => true

	validates :provider, :presence => true



end
