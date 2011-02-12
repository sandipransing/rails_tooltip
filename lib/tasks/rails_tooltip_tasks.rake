# desc "Explaining what the task does"
# task :rails_tooltip do
#   # Task goes here
# end
namespace :rails_tooltip do
  desc 'Copy tooltip assets from plugin to app root'
  task :install do
    puts "** Copying tooltip plugin assets..."           

    source = File.join(RAILS_ROOT, '/vendor/plugins/rails_tooltip/assets/.')
    FileUtils.cp_r source, RAILS_ROOT
         
    puts "** Successfully installed tooltip assets"
  end

end
