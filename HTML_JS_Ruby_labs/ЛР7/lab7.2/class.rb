# frozen_string_literal: true

# class
class Int
  attr_reader :num

  def initialize(num)
    @num = num
    @num = num.to_i unless num.is_a?(Integer)
  end

  def output
    puts @num.to_s
  end

  def quantity
    @num.digits.size
  end
end

# class
class IntFloat < Int
  attr_reader :fl_num

  def initialize(num, fl_num)
    super(num)
    @fl_num = fl_num
    @fl_num = fl_num.to_f unless num.is_a?(Float)
  end

  def output
    super
    puts @fl_num.to_s
  end

  def quantity
    @fl_num.to_s.length.then { |x_num| [super, x_num - 1] }
  end
end
