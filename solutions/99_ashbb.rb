require "test_cycle_tracks"

def skip_tracks a,i
  a[0..-1] = a[i..-1] + a[0...i]
end

print "Program code length: "
puts "def skip_tracks(a,i)a[0..-1]=a[i..-1]+a[0...i]end".length
puts
