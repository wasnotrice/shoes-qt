module Shoes
  module Qt
    class Slot < ::Qt::Widget
      def initialize(dsl, parent, layout)
        super()

        if parent.class == App
          parent.main.setCentralWidget(self)
        else
          parent.layout.addWidget(self)  
        end
        
        super.layout = layout
        @parent = parent
        @dsl = dsl
      end

      attr_reader :dsl, :parent, :app, :left, :top, :width, :height
    end

    class Flow < Slot
      def initialize(dsl, parent)
        super(dsl, parent, FlowLayout.new)
      end
    end

    class Stack < Slot; end
  end
end
