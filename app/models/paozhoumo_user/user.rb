# coding: utf-8
module PaozhoumoUser
  class User < ActiveRecord::Base 
    extend OmniauthCallbacks
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable,
           :token_authenticatable, :omniauthable#, :confirmable, :lockable 

    # Setup accessible (or protected) attributes for your model
    attr_accessible :email, :password, :password_confirmation, :remember_me, :role_id
    
    has_many :authorizations
    
    belongs_to :role
    
  end
end
