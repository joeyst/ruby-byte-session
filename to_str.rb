puts "a" + 1









class Integer
  def to_str
    to_s
  end
end

puts "a" + 1









class Pizza
  def to_str
    "pizza"
  end

  def to_s
    "3"
  end

  def to_int
    5
  end

  def coerce(val)
    [self.to_int, val]
  end

  def *(val)
    self.coerce(val).inject("*")
  end
end

class PineapplePizza < Pizza
  def to_int
    10
  end
end

p "This is a " + Pizza.new + "."                                    # Pizza.to_str
p "Pizza taste as string   : #{Pizza.new}"                          # Pizza.to_s
p "Pizza taste as integer  : %i" % Pizza.new                        # Pizza.coerce -> Pizza.to_int
p "With pineapple          : %i" % PineapplePizza.new               # PineapplePizza.coerce
p "Pizza * pineapple pizza : %i" % (Pizza.new * PineapplePizza.new) # Pizza.coerce -> Pizza.to_int * PineapplePizza.to_int 
                                                                                     # returns `Integer`, calls `PineapplePizza.to_int` automatically 
