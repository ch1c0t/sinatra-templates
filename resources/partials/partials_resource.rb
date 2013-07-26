class PartialsResource < Sinatra::Base
  get '/partials/*.html' do |partial|
    slim partial.to_sym
  end
end
