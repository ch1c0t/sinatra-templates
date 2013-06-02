class App < Sinatra::Base
  get '/' do
    slim :root
  end

  get '/partials/*.html' do |partial|
    slim :"partials/#{partial}", layout: false
  end
end
