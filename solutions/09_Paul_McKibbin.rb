require "test_cycle_tracks"

def skip_tracks(a,i) o=i%a.size; a.replace(a[o..-1]+a[0..o-1]) if o; end

print "Program code length: "
puts "def skip_tracks(a,i)o=i%a.size;a.replace(a[o..-1]+a[0..o-1])if o;end".length
puts
