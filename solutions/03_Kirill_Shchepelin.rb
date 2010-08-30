require "test_cycle_tracks"

def skip_tracks(arr, i)
  i.times{arr.push(arr.shift)}
  arr
end

def skip_tracks(a,i)i.times{a.push(a.shift)};a end

print "Program code length: "
puts "def skip_tracks(a,i)i.times{a.push(a.shift)};a end".length
puts
