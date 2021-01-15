class AbstractDataType
  class Stack
    class StackWithArray

      def initialize
        @stack = []
        @size = 0
      end

      def empty?
        puts @size
        @size.zero?
      end

      def push(value)
        @size += 1
        @stack << value
      end

      def pop
        @size -= 1
        @stack.pop
      end

      def peek
        @stack[@size - 1]
      end

      def to_s
        @stack.reverse_each { |value| puts value }
      end

    end
  end
end
