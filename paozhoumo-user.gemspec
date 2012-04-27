$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "paozhoumo-user/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "paozhoumo-user"
  s.version     = PaozhoumoUser::VERSION
  s.authors     = "zhaoxiao10"
  s.email       = "zhaoxiao10@gmail.com"
  s.platform    = Gem::Platform::RUBY
  s.homepage    = "www.paozhoumo.com"
  s.summary     = "PaozhoumoUser Engine"
  s.description = "PaozhoumoUser Engine"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
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
