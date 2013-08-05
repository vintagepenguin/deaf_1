get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
   redirect to("/?grandma=#{grandma_listens(params[:user_input])}")
end

def grandma_listens(something_said)    
  if something_said == something_said.upcase
    "NO, NOT SINCE 1983!"
  else 
    "HUH?! SPEAK UP SONNY!"  
  end
end
