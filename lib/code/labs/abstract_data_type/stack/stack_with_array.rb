class AbstractDataType
  class Stack
    class StackWithArray

      attr_reader :size

      def initialize
        @stack = []
        @size = 0
      end

      def empty?
        @size.zero?
      end

      def push(value)
        @size += 1
        @stack << value
      end

      def pop
        raise NoMemoryError.new('Underflow stack.') if @stack.empty?

        @size -= 1
        @stack.pop
      end

      def peek
        @stack[@size - 1]
      end

      def to_a
        @stack
      end

    end
  end
end
