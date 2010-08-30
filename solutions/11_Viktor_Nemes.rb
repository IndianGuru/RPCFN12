require "test_cycle_tracks"

def skip_tracks(arr, i)
  where_to_split = i % arr.size
  arr.replace arr[where_to_split..-1] + arr[0..where_to_split-1] if where_to_split != 0
end

print "Program code length: "
puts "def skip_tracks(a,i)w=i%a.size;a.replace a[w..-1]+a[0..w-1]if w!=0;end".length
puts
