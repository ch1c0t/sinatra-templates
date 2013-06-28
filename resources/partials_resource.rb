class PartialsResource < Sinatra::Base
  get '/partials/*.html' do |partial|
    slim :"partials/#{partial}", layout: false
  end
end
