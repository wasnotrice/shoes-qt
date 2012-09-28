module Shoes
  module Qt
    class App
      def initialize(dsl)
        ::Shoes::Qt.init
        @dsl = dsl
        @main = ::Qt::MainWindow.new
        @main.window_title = @dsl.app_title
        @main.resize @dsl.width, @dsl.height
      end

      attr_reader :dsl, :main

      def open
        @main.show
        @main.raise
        ::Shoes::Qt.start
      end

      def quit
        @main.close
      end
    end
  end
end
