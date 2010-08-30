require "./test_cycle_tracks"

def skip_tracks(arr, i)
  t = (s = arr.size) - (h = i % s)
  arr[0, t], arr[t..s] = arr[h..s], arr[0, h]
end

print "Program code length: "
puts "def skip_tracks(a,i)t=(s=a.size)-(h=i%s);a[0,t],a[t..s]=a[h..s],a[0,h]end".length

=begin
def skip_tracks(arr, i)
  arr.rotate! i
end

print "Program code length ( > ruby 1.9.2 only): "
puts "def skip_tracks(a,i)a.rotate!(i)end".length
puts
=end
