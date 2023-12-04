require 'jets'
require 'jbuilder/jbuilder_template'

class Jbuilder
  class Turbine < ::Jets::Turbine
    initializer :jbuilder do
      ActiveSupport.on_load :action_view do
        ActionView::Template.register_template_handler :jbuilder, JbuilderHandler
        require 'jbuilder/dependency_tracker'
      end
    end
  end
end
