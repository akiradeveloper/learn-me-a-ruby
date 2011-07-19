# expect Int -> Int
def a(&func)
  func.call 10
end

def b(func)
  func.call 10
end

v = 100
x = lambda { |x|  v + (x << 10) } # closure
y = Proc.new { v * 10 } # closure
p # closure x
puts x.call 1
puts a(&x)
puts b(x)
puts a(&y)
puts b(y)
