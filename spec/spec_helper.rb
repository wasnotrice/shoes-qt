RSpec.configure do |config|
  config.before(:each) do
    Qt::Application.any_instance.stub(:exec)
    #Qt::MainWindow.any_instance.stub(:show)
  end
  config.after(:each) do
    defined?(app) ? app.quit : subject.quit
  end
end
require 'shoes'

Shoes.configuration.backend = :qt



