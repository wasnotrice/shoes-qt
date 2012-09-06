module Shoes
  module Qt
    class Animation < ::Qt::Object
      # An Swt animation implementation
      #
      # @param [Shoes::Animation] dsl The Shoes DSL Animation this represents
      # @param [Shoes::Swt::App] The Swt representation of the current app
      # @param [Proc] blk The block of code to execute for each animation frame
      def initialize(dsl, app, blk)
        super()
        @dsl = dsl
        @app = app
        @blk = blk

        interval = 2000 / @dsl.framerate
        
        @timer = ::Qt::BasicTimer.new
        @timer.start(interval, self)  
      end

      def timerEvent(event)
        if event.timerId == @timer.timerId
          @blk.call(@dsl.current_frame)
          @dsl.increment_frame
        else
          super(event)
        end
      end

      #def stop
      #end

      #def start
      #end
    end
  end
end