module Shoes
  module Qt
    class App
      def initialize(dsl)
        @dsl = dsl
        @app = ::Qt::Application.new []
        @real = ::Qt::MainWindow.new
        @real.window_title = "Shoes 4"
        @real.resize 600, 500
      end

      attr_reader :dsl, :real

      def open
        @real.show
        @real.raise
        #@real.activate_window
        @app.exec
      end
    end
  end
end
