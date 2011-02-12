#RailsTooltip
Allows an easy implementation of javascript tooltip in rails.
for demo [visit](http://flowplayer.org/tools/demos/tooltip/index.htm "Tooltip demo")

## Gem Installation
    [sudo] gem install rails_tooltip

## Plugin Installation
    rails plugin install git://github.com/sandipransing/rails_tooltip.git
    
## Copy tooltip assets from plugin to app root
    rake rails_tooltip:install  

## Usage

### 1. Add following line to controller that uses tooltip
    uses_tooltip
### 2. In layout head add following lines
    <%= rails_tooltip_stuff_if_used %>
### 3. Inside layout body add follwing div
    <div id="demotip">&nbsp;</div>
### 4. Add title attribute to the node where tooltip to be displayed
    <%= link_to 'Blog', 'http://funonarils.com', :title => "A Ruby On Rails Blog"%>
    <%= link_to 'Tooltip', 'http://flowplayer.org/tools/demos/tooltip/index.htm', :title => "Visit to see demo of tooltip"%>
### 5. To Initialize tooltip add following line at the bottom of view
    <%= tooltip_init_if_used( 'daily_statistics', 'a' ) %>
    
Here daily_statistics is the id of container holding a tags i.e. links

### 6. To initiate tooltip for some other html tags like <label>
    <label title="This is label tooltip">Label</label>
    <%= tooltip_init_if_used( 'daily_statistics', 'label' ) %>

## TDOO:Example

## Contributors
[Sandip Ransing](http://funonrails.com/about,"Sandip Ransing"), [Josh Software Private Limited](http://joshsoftware.com,"Josh Software")

If you wanted to do any changes in the plugin, do fork repository.
Please, Feel free to add your name in contributors list.

any sugestions? **san2821 at gmail.com** or **sandip at joshsoftware.com** released under the MIT license

Copyright (c) 2010 [Sandip Ransing], released under the MIT license
