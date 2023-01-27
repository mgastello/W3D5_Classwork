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
        new_parent = child_node.parent=(self)
        new_parent.children.push(child_node)
    end
end