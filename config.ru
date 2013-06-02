require 'bundler/setup'
Bundler.require :default, :assets

require './app'

map '/assets' do
  env = Sprockets::Environment.new
  env.register_engine '.ls', LiveScript::TiltTemplate

  env.append_path 'assets/js'
  env.append_path 'assets/css'
  env.append_path 'assets/components'

  run env
end

map '/' do
  run App
end
