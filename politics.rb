class Politics < Sinatra::Base
  configure do
    set :protection, :except => :frame_options

    # Set expire header of 1 year for static files
    set :static_cache_control, [:public, :max_age => 31536000]
  end

  # Use this to define your 404 page.
  not_found do
    redirect '/'
  end

  get '/' do
    erb :home
  end

  get '/creditos' do
    erb :credits
  end
end