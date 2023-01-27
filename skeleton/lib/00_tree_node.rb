class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(value)
        if !parent == nil
          parent = self.value
          children << parent.value
        end
    end
end