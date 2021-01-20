require 'code/labs/abstract_data_type/node'

class AbstractDataType
  class LinkedLists
    class SingleLinkedList

      attr_reader :head, :size

      def initialize
        @head = nil
        @size = 0
      end

      def empty?
        @head.nil?
      end

      def find(pos)
        node = @head
        counter = 0

        while !node.nil? && counter != pos
          counter += 1
          node = node.next
        end

        node
      end

      def append(value)
        new_node = Node.new(value)

        if empty?
          @head = new_node
        else
          tail = find(@size - 1)
          tail.next = new_node
        end

        @size += 1
      end

      def insert(value, pos)
        new_node = Node.new(value)

        current, previous, counter = traverse(pos)

        # It means head
        if counter.zero?
          new_node.next = @head
          @head = new_node
        else
          previous.next = new_node
          new_node.next = current
        end

        @size += 1
      end

      def delete(pos)
        current, previous, counter = traverse(pos)

        return if current.nil?

        if counter.zero?
          @head = current.next
        else
          previous.next = current.next
        end

        @size -= 1
      end

      # It will traverse to the maximum note if the post is exceed from size node
      def traverse(pos)
        counter = 0
        current = @head
        previous = nil

        while !current.nil? && counter != pos
          counter += 1
          previous = current
          current = current.next
        end

        [current, previous, counter]
      end

      def to_a
        node = @head
        placeholder = []
        while node
          placeholder << node.value
          node = node.next
        end

        return placeholder
      end

    end
  end
end
