$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "paozhoumo-user/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "paozhoumo-user"
  s.version     = PaozhoumoUser::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of PaozhoumoUser."
  s.description = "TODO: Description of PaozhoumoUser."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
  
  s.add_dependency 'devise', '>= 2.0.0rc'
  s.add_dependency 'rails', '>= 3.1.rc1'
  s.add_dependency 'omniauth'
  s.add_dependency 'omniauth-weibo'
  # need add other git instead of old one
  # gem 'omniauth-weibo', :git => 'git://github.com/ballantyne/omniauth-weibo.git'
  s.add_dependency 'actionmailer', '>= 3.1.1'
  s.add_dependency 'cancan'
  s.add_dependency 'settingslogic', ">= 2.0.6"
end
