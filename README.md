paozhoumo-user
==============

mountable engine for user

##New project
    rails new paozhoumo
    rails g scaffold resort name:string content:text

##Init devise

    gem 'devise', :git => 'git://github.com/zhaoxiao10/devise.git'
    rails g devise:install

## Mount paozhoumo_user
add Gemfile

    gem 'paozhoumo-user', :git => 'git://github.com/zhaoxiao10/paozhoumo-user.git'
    gem 'omniauth-weibo', :git => 'git://github.com/ballantyne/omniauth-weibo.git'

##DB

add db/seeds.rb

    PaozhoumoUser::Engine.load_seed

mount db

    rake db:create
    rake paozhoumo_user:install:migrations
    rake db:migrate//cp application.yml
    rake db:seed

##Code change
change config/routes.rb

    mount PaozhoumoUser::Engine =>  "/"

change crontroller 

    before_filter :authenticate_user!

new models/ability.rb

    class Ability  
		  include CanCan::Ability  
		  def initialize(user)
		     if !user.nil? && (user.role.name == 'admin'|| user.role.name == 'owner')
		       can :manage, :all
		     else
		       can :read, :all
		     end
		   end
		end