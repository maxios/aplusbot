require 'sinatra/cors'
require 'sinatra/custom_logger'
require 'logger'

class Stealth::Server
  register Sinatra::Cors
  set :views, Stealth.root + '/views'
  set :public_folder, Stealth.root + '/public/dist'

  set :allow_origin, "#{Stealth.config.host}"
  set :allow_methods, "GET,HEAD,POST,DELETE,PATCH"
  set :allow_headers, "content-type,if-modified-since"
  set :expose_headers, "location,link"

  get '/courses/subscriptions' do
    cache_control :public, :must_revalidate, :max_age => 1

    @data = {courses: Course.all.as_json}.to_json
    response.headers['X-Frame-Options'] = 'ALLOWALL'
    response.headers['Cache-Control'] = 'no-cache'

    haml :index, :format => :html5
  end

  get '/courses' do
    User.find_by!(fb_id: params[:user_id]).courses.to_json
  end
end
