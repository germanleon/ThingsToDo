require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :about_me, :email_address, :first_name, :last_name, :password, :salt, :user_name, :usuario_id
  
  validates :user_name, :presence => true, :uniqueness => true
  validates :email_address, :presence => true
  validates :password, :presence => true
  
  validates :password, :confirmation => true
  attr_accessible :password_confirmation
#  attr_accessible   :passwordcheck
  
 # validate :password_must_be_present
  
  has_many :tasks
  has_many :friends
  
  def User.authenticate(name, password)
    if user = find_by_user_name(name)
      if user.password == password
      #if user.password == encrypt_password(password, user.salt)
        user
      end
    end
  end
  
  #def User.encrypt_password(password, salt)
  #  Digest::SHA2.hexdigest(password + "wibble" + salt)
  #end
  
  # 'passwordcheck' is a virtual attribute
  #def password=(password)
  #  @password = password
    
  #  if password.present?
  #    generate_salt
  #    self.password = self.class.encrypt_password(password, salt)
  #  end
  #end
  
  #private
    
    #def password_must_be_present
    #  errors.add(:password, "Missing password") unless password.present?
    #end
    
   # def generate_salt
    #  self.salt = self.object_id.to_s + rand.to_s
    #end
end
