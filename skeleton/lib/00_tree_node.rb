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
        old.children.pop(self)
      end
    end
end