require 'sinatra'
require 'rspotify'


enable :sessions

$client_credentials = {
  client_id: 'MY_APPLICATION_ID',
  client_secret: 'MY_APPLICATION_SECRET' 
}
$callback_url = 'http://localhost:4567' # Must be registered first at https://developer.spotify.com/my-applications/


# RSpotify::authenticate($client_credentials[:client_id], $client_credentials[:client_secret])

get '/' do

  if session[:user]
    user = RSpotify::User.from_credentials(user[:credentials])
    "Hello, #{session[:user][:name]}. You have #{user.playlists.count} playlists"
  else
    client_id = $client_credentials[:client_id]
    scope = 'playlist-modify-public user-read-private'

    "<a href='https://accounts.spotify.com/authorize?client_id=#{client_id}&response_type=code&scope=#{scope}&redirect_uri=#{$callback_url}&show_dialog=true'>Login</a>"
  end

end


get '/login/spotify' do
  credentials = RSpotify.exchange_code(params[:code], $callback_url, $client_credentials)
  user = RSpotify::User.from_credentials(credentials)

  session[:user] = {
    name: user.name,
    credentials: user.credentials
  }

  redirect to('/')
end
