# RailsTooltip
module Tooltip
  module ClassMethods
    def uses_tooltip(options = {})
      tooltip_options = options.delete(:options) || nil
      proc = Proc.new do |c|
        c.instance_variable_set(:@uses_tooltip, true)
      end
      before_filter(proc, options)
    end
  end
  
  
  def self.included(base)
    base.extend(ClassMethods)
    base.helper TooltipHelper
  end
end