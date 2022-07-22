require_relative './node'

class LinkedList

    attr_accessor :head

    def initialize
        @head = nil
    end

    def prepend(node)
        if head.nil?
            self.head = node
        else
            off = self.head
            node.next_node = off
            self.head = node
        end
    end

    def append(node)
        if head.nil?
            self.head = node
        else
            last_node = head
            while last_node.next_node
                last_node = last_node.next_node
            end
            last_node.next_node = node
        end
    end

    def delete_head
        if head.nil?
            return
        end

        if head.next_node
            self.head = head.next_node
        else
            self.head = nil
        end
    end

    def delete_tail
        if head.nil?
            return
        end

        if head.next_node.nil?
            return self.head = nil
        end

        current_node = head
        last_node = nil

        while current_node.next_node
            last_node = current_node
            current_node = current_node.next_node
        end

        last_node.next_node = nil

    end
end
