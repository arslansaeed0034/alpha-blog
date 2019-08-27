class User < ActiveRecord::Base
	validates :username,presence: true,
	uniqueness:{ case_senstive: false },
	 length: { minimum:4, maximum:12 } 

	 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	 validates :email,presence: true,
	 uniqueness:{ case_senstive: false },
	 format: { with: VALID_EMAIL_REGEX }

end