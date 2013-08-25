Pathname.glob("./resources/*/*.rb").each { |file| require file }

class App < Sinatra::Base
  use PartialsResource

  get '/' do
    slim :root
  end
end
