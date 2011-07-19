def task(map)
#  p map
  yield map.keys[0], map.values[0] if block_given?
end  

def __rule(map)
  yield map.keys[0], map.values[0] if block_given?
end

if __FILE__ == $0

#task "dist" => ["init", "compile"], "dist2" => "akira" 
task "dist" => ["init", "compile"] do |d, s|
  puts "dest=#{d}, src=#{s.join(",")}"
end

__rule "x" => {
:explictly => ["a", "b"], 
:implicitly => ["c"]} do |name, dependency|
 puts name
 puts dependency
end


end
