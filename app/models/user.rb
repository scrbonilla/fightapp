class User < ActiveRecord::Base
    has_secure_password

    attr_accessible :user_name, :password, :password_confirmation
    validates_uniqueness_of :email
end
