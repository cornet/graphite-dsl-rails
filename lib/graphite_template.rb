require "graphite_template/version"
require 'graphite_template/template_handler'

module GraphiteTemplate
  ActionView::Template.register_template_handler :graph, GraphiteTemplate::TemplateHandler
  #FIXME: Find a better way to solve this. This is hideous.
  class ActionView::Template
    def compile_with_api_patch(*args, &block)

      # Monkey patch the source to respond negatively to encoding_aware?
      # so ActionView::Template#compile doesn't throw up when a hash goes
      # through..
      unless source.respond_to?(:encoding_aware?)
        class<<source
          def encoding_aware?
            false
          end
        end
      end

      compile_without_api_patch(*args, &block)
    end
    alias_method_chain :compile, :api_patch
  end
end

