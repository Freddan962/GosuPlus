module Gosuplus
  class Body
    attr_accessor :position, :a, :width, :height
    
    def initialize(position, width, height, angle = 90)
      @position, @width, @height, @a = position, width, height, angle
    end
  end
end