module Gosuplus
  class Window < Gosu::Window
    def initialize(caption, width, height, fullscreen = false)
      super width, height, fullscreen
      self.caption = caption
      @state_manager = StateManager.new(self)
    end

    def update
      @state_manager.update
    end

    def draw
      @state_manager.draw
    end

    def button_down(id)
      @state_manager.handle_input(id, true)
    end

    def button_up(id)
      @state_manager.handle_input(id, false)
    end

    def needs_cursor?
      true
    end

    def add_state(state)
      @state_manager.add(state)
    end
  end
end
