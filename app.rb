require './resources/partials_resource'

class App < Sinatra::Base
  use PartialsResource

  get '/' do
    slim :root
  end
end
