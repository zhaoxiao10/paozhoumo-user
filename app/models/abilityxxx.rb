class Ability  
  include CanCan::Ability  

  def initialize(user)  
    if user.role.name == 'admin'  
      can :manage, :all  
    else  
      can :read, :all  
    end  
  end  
end