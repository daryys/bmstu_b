# frozen_string_literal: true

def find_series
  Enumerator.new do |yielder|
    steps = 0
    sum1 = 0
    sum2 = 0
    loop do
      steps += 1
      sum2 += func(steps)
      yielder << [sum2, sum1]
      sum1 = sum2
    end
  end
end

# :reek:UtilityFunction
def func(k_num)
  (1.0 / (k_num * (k_num + 1)).to_f)
end

def answer(eps)
  find_series.find { |s2, s1| (s2 - s1).abs <= eps }
end
