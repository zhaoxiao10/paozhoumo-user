PaozhoumoUser::Engine.routes.draw do
  get "admin/userlist", :to => "admin#userlist"
  get "admin/user/:id", :to => "admin#edit", :as => "admin_useredit"
  put "admin/user/:id", :to => "admin#update", :as => "admin_userupdate"
  # get "sessions/create"

  devise_for :users, {
    :path => "user",
    :class_name => "PaozhoumoUser::User",
    :controllers => {
      :registrations => "paozhoumo_user/registrations",
      :omniauth_callbacks => "paozhoumo_user/omniauth_callbacks"
    },
    module: :devise
  }
end
