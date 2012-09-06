module Shoes
  module Qt
    class App
      def initialize(dsl)
        @dsl = dsl
        @app = ::Qt::Application.new []
        @main = ::Qt::MainWindow.new
        @main.window_title = @dsl.app_title
        @main.resize @dsl.width, @dsl.height
      end

      attr_reader :dsl, :main

      def open
        @main.show
        @main.raise
        #@real.activate_window
        @app.exec
      end
    end
  end
end
