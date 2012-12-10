require "graphite_template/version"
require 'graphite_template/template_handler'

module GraphiteTemplate
  if defined?(ActionView)
    ActionView::Template.register_template_handler :graph, GraphiteTemplate::TemplateHandler
  end
end
