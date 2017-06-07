require 'bundler/setup'
Bundler.require :default, :assets

require './app'

map '/assets' do
  env = Sprockets::Environment.new

  %w!
    js
    css
    components
  !.each do |name|
    env.append_path "assets/#{name}"
  end

  run env
end

map '/' do
  run App
end
