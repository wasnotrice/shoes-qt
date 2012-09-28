require 'shoes'
require "Qt"
require 'shoes/qt/app'
require 'shoes/qt/flow_layout'
require 'shoes/qt/slot'
require 'shoes/qt/animation'
require 'shoes/qt/button'

module Shoes
  module Qt
    def self.init
      @app ||= ::Qt::Application.new []
    end

    def self.start
      @app.exec
    end
  end
end
