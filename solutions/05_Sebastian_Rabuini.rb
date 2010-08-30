require "test_cycle_tracks"

def skip_tracks(arr, i)
  i.abs.times { i > 0 ? arr.push(arr.shift) : arr.unshift(arr.pop) }
end

def skip_tracks(a,i)i.abs.times{i>0?a.push(a.shift):a.unshift(a.pop)}end

print "Program code length: "
puts "def skip_tracks(a,i)i.abs.times{i>0?a.push(a.shift):a.unshift(a.pop)}end".length
puts
