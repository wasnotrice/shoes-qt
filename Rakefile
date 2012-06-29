require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'

begin
  require 'yard'

  YARD::Rake::YardocTask.new do |t|
    t.options = ['-mmarkdown']
  end
rescue LoadError
  desc "Generate YARD Documentation"
  task :yard do
    abort 'YARD is not available. Try: gem install yard'
  end
end
