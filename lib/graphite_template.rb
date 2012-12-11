require "graphite_template/version"
require 'graphite_template/template_handler'

module GraphiteTemplate

  module Config
    def self.graphite_url=(value)
      @graphite_url = value
    end

    def self.graphite_url
      @graphite_url ||= 'http://127.0.0.1:8080/render'
    end
  end

  ActionView::Template.register_template_handler :graph, GraphiteTemplate::TemplateHandler
end
