class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :registerable,  
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]
         
   validates :email, uniqueness: true
   validates :username,:uniqueness => {:case_sensitive => false}
   attr_accessor :login
   
   def self.find_first_by_auth_conditions(warden_conditions)
     conditions = warden_conditions.dup
     if login = conditions.delete(:login)
       where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     else
       where(conditions).first
     end
   end
   
end
