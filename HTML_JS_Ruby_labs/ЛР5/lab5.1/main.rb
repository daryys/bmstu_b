# frozen_string_literal: true

def maths(x_num, y_num)
  (2 * Math.cos(x_num - Math::PI / 6.0)) / (1 / 2.0 + Math.sin(y_num)**2)
end
