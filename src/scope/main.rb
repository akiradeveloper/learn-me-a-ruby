var = 10
p var # whose variable?
def inc
  # var = 10
  var += 1 # += not defined for nil class. def end block is not closure.
end
inc 
p var
 
