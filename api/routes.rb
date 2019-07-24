require 'sinatra/custom_logger'
require 'logger'

class Stealth::Server
  set :views, Stealth.root + '/views'
  set :public_folder, Stealth.root + '/public/dist'

  get '/courses/subscriptions' do
    @payload = {courses: 'hello people'}.to_json
    haml :index, :format => :html5
  end
end

