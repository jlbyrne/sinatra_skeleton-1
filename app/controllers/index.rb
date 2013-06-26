get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @radio_input = params[:radio_input]
  @check_input_1 = params[:check_input_1]
  @check_input_2 = params[:check_input_2]
  @check_input_3 = params[:check_input_3]
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @text_input = params[:text_input]
  @select_input = params[:select_input]
  erb :post_cool_url
end