require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new 
    end
    
    get '/new' do
    
      erb :"pirates/new"
    end
    
    post '/pirates' do
      
     @pirates
    end
      

  end
end
