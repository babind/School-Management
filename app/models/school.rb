class School < ApplicationRecord
has_many :school_users
has_many :users, :through => :school_users


	# def  self.countries
			

	# end

end
