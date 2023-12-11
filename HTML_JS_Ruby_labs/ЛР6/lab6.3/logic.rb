# frozen_string_literal: true

def intg(step, top, bottom, func = false)
  square = 0
  d_x = (top - bottom) / step.to_f
  (bottom..top).step(d_x) { |cur_pos| square += func ? func.call(cur_pos) : yield(cur_pos) }
  square * d_x
end
