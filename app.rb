require 'rubygems'
require 'sinatra'
require 'haml'

#
# Definitions
#

#
# Include helpers
#

#
# Set Sinatra variables
#
set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5} # default Haml format is :xhtml

#
# ===========================================================================================
#

#
# Home
# -----------------------------
#
get '/' do
  haml :home, :layout => :'layouts/application'
end
