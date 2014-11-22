require 'rubygems'
require 'bundler/setup'
require 'RMagick' 
require 'active_support/all'

# Load Sinatra Framework (with AR)
require 'sinatra'
require 'sinatra/activerecord'

require 'pry'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

# Sinatra configuration
configure do
  set :root, APP_ROOT.to_path
  set :server, :puma

  enable :sessions
  set :session_secret, ENV['SESSION_KEY'] || 'lighthouselabssecret'

  secrets = YAML.load_file( File.join(Sinatra::Application.root, 'config', 'secrets.yml') )
  set :instagram_id, secrets['instagram']['id']
  set :instagram_secret, secrets['instagram']['secret']
  
  set :views, File.join(Sinatra::Application.root, "app", "views")
end

# Set up the database and models
require APP_ROOT.join('config', 'database')

# db = URI.parse('postgres://vagrant@localhost:5432/hyperlocal')

ActiveRecord::Base.establish_connection(
  :adapter  => 'postgresql',#? 'postgresql' : db.scheme,
  :host     => 'localhost',
  :username => 'hyperlocal',
  :password => 'hyperlocal',
  :database => 'hyperlocal',
  :encoding => 'utf8',
  :port => 5432
)
# Load the routes / actions
require APP_ROOT.join('app', 'actions')


