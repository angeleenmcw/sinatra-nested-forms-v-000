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
      
     @pirate = Pirate.new(params[:pirate])
     
     params[:pirate][:ships].each do |details|
       Ship.new(details)
    end
     
     @ships = Ship.all
     
     erb :"pirate/show"
       
       
    end
  end
end
