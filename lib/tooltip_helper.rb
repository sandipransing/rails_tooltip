module TooltipHelper

  def using_tooltip?
    !@uses_tooltip.nil?
  end
  
  def tooltip_init_if_used( parent, child )
    javascript_tag %{ $(document).ready(function() { $("##{parent} #{child}[title]").tooltip('#demotip');  }) } if @uses_tooltip
  end
  
  def rails_include_tooltip
    "#{stylesheet_link_tag("tooltip")} #{javascript_include_tag("jquery.tools.min")}"
  end
  
  def rails_tooltip_stuff_if_used
    rails_include_tooltip if @uses_tooltip
  end

end
