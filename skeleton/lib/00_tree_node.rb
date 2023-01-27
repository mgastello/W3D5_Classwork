require 'byebug'

class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
      old = self.parent
      @parent = node
      if @parent != nil
        node.children << self
      end
      if old != nil
        old.children.pop
      end
    end

    def add_child(child_node)
      child_node.parent=(self)
    end

    def remove_child(child_node)
      child_node.parent=(nil)
      raise "node is not a child" if child_node.parent == nil
    end

    def dfs(target_value)
        return self if self.value == target_value

        stack = []
        stack.push(value)

    end
end