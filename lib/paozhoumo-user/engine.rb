require 'devise'
require 'omniauth'
require 'omniauth-weibo'
require 'cancan'
require 'settingslogic'

module PaozhoumoUser
  class Engine < ::Rails::Engine
    isolate_namespace PaozhoumoUser
  end
end
