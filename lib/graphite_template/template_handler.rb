require 'graphite_graph'

module GraphiteTemplate
  class TemplateHandler
    def self.call(template)
      "'#{GraphiteTemplate::Config.graphite_url}?' + GraphiteGraph.new('#{template.inspect}').url"
    end

  end
end
