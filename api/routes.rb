require 'sinatra/custom_logger'
require 'logger'

class Stealth::Server
  set :views, Stealth.root + '/views'
  set :public_folder, Stealth.root + '/public'

  get '/courses/subscriptions' do
    haml :index, :format => :html5
  end
end

