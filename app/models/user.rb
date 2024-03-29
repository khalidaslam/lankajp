class User < ActiveRecord::Base
	has_many :jobs
	has_many :job_posts
	
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :fullname, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
