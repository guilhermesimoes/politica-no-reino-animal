require './application_helper'

class Politics < Sinatra::Base
  register Sinatra::AssetPack

  assets {
    serve '/js',     from: 'public/javascripts'
    serve '/css',    from: 'public/stylesheets'
    serve '/images', from: 'public/images'

    # The second parameter defines where the compressed version will be served.
    # (Note: that parameter is optional, AssetPack will figure it out.)
    js :application, [
      '/js/application.js'
    ]

    css :application, [
      '/css/application.css'
    ]

    js_compression  :jsmin
    css_compression :sass
  }

  configure do
    set :protection, :except => :frame_options                    # Disable X-Frame-Options header

    set :static_cache_control, [:public, :max_age => 31536000]    # Set expire header of 1 year for static files
  end

  helpers ApplicationHelper

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
