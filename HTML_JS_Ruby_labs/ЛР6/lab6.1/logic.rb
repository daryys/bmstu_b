# frozen_string_literal: true

def find(eps = 1e-4)
  steps = 0
  sum1 = 0
  sum2 = 0
  loop do
    steps += 1
    sum2 = sum1 + func(steps)
    break if (sum2 - sum1).abs <= eps

    sum1 = sum2
  end
  [sum2, steps]
end

# :reek:UtilityFunction
def func(k_num)
  (1.0 / (k_num * (k_num + 1)).to_f)
end
