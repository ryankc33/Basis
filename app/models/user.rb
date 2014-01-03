class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, 
         :omniauthable, :omniauth_providers => [:google_oauth2],:authentication_keys => [:login]
         
  validates :email, uniqueness: true
  validates :username,:uniqueness => {:case_sensitive => false}
  attr_accessor :login
  
         
  def self.find_for_google_oauth2(access_token, signed_in_resource=nil)
     data = access_token.info
     user = User.where(:email => data["email"]).first

     unless user
         user = User.create(name: data["name"],
              email: data["email"],
              password: Devise.friendly_token[0,20]
             )
     end
     user
  end
  
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      where(conditions).first
    end
  end
  
  
end
