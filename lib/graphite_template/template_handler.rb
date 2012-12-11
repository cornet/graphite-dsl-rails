require 'graphite_graph'

module GraphiteTemplate
  class TemplateHandler
    def self.call(template)
      "GraphiteGraph.new('#{template.inspect}').url"
      # "'#{template.inspect}'"
    end
  end
end
