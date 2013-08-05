get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
   
  def grandma_listens something_said
    
    if something_said == ""
      stop_talking if say_something == ""
    elsif something_said == something_said.upcase
      puts "NO, NOT SINCE 1983!"
    elsif something_said == "I love ya, Grandma, but I've got to go."
      stop_talking
    else 
      puts "HUH?! SPEAK UP SONNY!"  
    end
  end
end
