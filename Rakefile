require 'rubygems'
require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new('spec:integration') do |t|
  t.pattern = './shoes/spec/shoes/**/*_spec.rb'
  t.rspec_opts = ['-I./shoes/lib', '-I./shoes/spec', '-r./spec/spec_helper', '-r./shoes/spec/spec_helper.rb']
  t.rspec_opts << '-fd'
  t.rspec_opts << '-c'
  t.rspec_opts << '--tag qt'
end

RSpec::Core::RakeTask.new('spec') do |t|
  t.rspec_opts = []
  t.rspec_opts << '-fd'
  t.rspec_opts << '-c'
  t.rspec_opts << '--tag qt'
end

task :default => 'spec:all'
task 'spec:all' => [:spec, 'spec:integration']

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
