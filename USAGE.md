# Quick Example on Usage

## Build and install the gem

    rake build && gem install pkg/graphite_template-0.0.1.gem

## Using in Rails

Add 
    gem 'graphite_template'

to your Gemfile

### app/views/graph/cpu.erb

    <img src="<%= render('cpu') %>">

html_safe is needed or it escapes the image URL :(


### app/views/graph/_cpu.graph

    # graph settings
    title   "#{info['title']}"
    
    # individual fields
    field :iowait, :color => "#{info['color']}",
                   :alias => "#{info['alias']}",
                   :data  => "*.phy0-sw1-ash.mpstat.cpu0.usr";
    
### app/controllers/graph_controller.rb

    class GraphController < ApplicationController
      def index
        @title  = "CPU Usage"
        @alias  = "User Time"
        @color  = 'blue'
        render 'cpu'
      end
    end

### config/routes.rb

Add the route:

    resources :graph do
    end

### config/environment.rb
Add the following

    GraphiteTemplate::Config.graphite_url = 'http://<graphite address>/render'
