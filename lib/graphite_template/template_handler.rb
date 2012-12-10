require 'active_support/core_ext'
require 'graphite_graph'

module GraphiteTemplate
  class TemplateHandler
    # Return string of ruby to evaluate the template
    def self.call(template)
      if template.sounce.is_a? String
        # TODO: need to handle this
      else
        "GraphiteGraph.new(template.source).url"
      end
    end
  end
end
