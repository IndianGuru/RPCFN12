require "test_cycle_tracks"

def skip_tracks(tracks, skip)
  skip = skip % (n = tracks.size)
  skip.times {t = tracks.shift; tracks << t}
end

print "Program code length: "
puts "def skip_tracks(t,s)s=s%(n=t.size);s.times{c=t.shift;t<<c}end".length
puts
