# Homepage (Root path)
get '/' do
  erb :index
end

get '/login' do
    erb :login
end

get '/profile' do
    erb :profile
end

get '/pins' do
  @pins = Pin.all
  erb :pins_list
end
# 

post '/login' do
    redirect '/'
end 