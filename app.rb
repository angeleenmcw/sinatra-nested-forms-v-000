require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :new 
    end
    
    get '/new' do
    
      erb 
    
    
    post '/pirates' do
      
      erb :show 
    end
      

  end
end
