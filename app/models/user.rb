class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :school_users
 	has_many :schools, :through => :school_users
 	has_attached_file :avatar, styles: {medium: "300*300>", thumb: "100*100>", default_url: "/images/:style/missing.png" }
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
