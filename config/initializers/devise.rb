Devise.setup do |config|
  config.router_name = :paozhoumo_user
  config.omniauth :weibo, PaozhoumoUser::Settings.weibo_app_id, PaozhoumoUser::Settings.weibo_app_secret
end