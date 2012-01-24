require 'rubygems'
require 'bundler/setup'
require 'rack'
require 'rack-rewrite'


# The project root directory
$root = ::File.dirname(__FILE__)

# Common Rack Middleware
use Rack::ShowStatus      # Nice looking 404s and other messages
use Rack::ShowExceptions  # Nice looking errors

use Rack::Rewrite do
  r301 %r{^/post/Visual-Studio-20052008-Adding-projects-to-your-solution.aspx?$}, '/blog/visual_studio_20052008_adding_projects_to_your_solution'
  r301 %r{^/post/Setting-up-a-basic-continuous-integration-server-with-TeamCity.aspx?$}, '/blog/setting_up_a_basic_continuous_integration_server_with_teamcity/'
  r301 %r{^/post/Adding-a-MIME-map-in-IIS.aspx?$}, '/blog/adding_a_mime_map_in_iss/'
end


#
# From Rack::DirectoryIndex:
# https://github.com/craigmarksmith/rack-directory-index/
#
module Rack
  class DirectoryIndex
    def initialize(app)
      @app = app
    end
    def call(env)
      index_path = ::File.join($root, 'public', Rack::Request.new(env).path.split('/'), 'index.html')
      if ::File.exists?(index_path)
        return [200, {"Content-Type" => "text/html"}, [::File.read(index_path)]]
      else
        @app.call(env)
      end
    end
  end
end

use Rack::DirectoryIndex

run Rack::Directory.new($root + '/public')

