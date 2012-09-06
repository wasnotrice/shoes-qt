require 'shoes/swt/swt_button'

module Shoes
  module Qt
    class Button < ::Qt::PushButton
      attr_reader :parent

      slots 'btn_clicked()'

      def initialize(dsl, parent, blk)
        super(dsl.text)
        parent.layout.addWidget(self)

        @dsl = dsl
        @parent = parent
        @blk = blk

        connect(self, SIGNAL('clicked()'), self, SLOT('btn_clicked()')) if @blk
      end

      def btn_clicked()
        @blk.call
      end

      def width=(value)
        # TODO
      end

      def width
        @real.size.width
      end

      def height=(value)
        # TODO
      end

      def height
        @real.size.height
      end

      def focus
        @real.setFocus
      end

      #def move(left, top)
        # TODO
        # unless @real.disposed?
      #     move left, top
        # end
      #end

    end
  end
end
