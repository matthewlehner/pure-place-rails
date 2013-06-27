require "pure-place/version"

unless defined?(Sass)
  require 'sass'
end

module PurePlace
  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      require 'pure-place/engine'
    end
  else
    Sass.load_paths << File.expand_path("../../app/assets/stylesheets", __FILE__)
  end
  
end
