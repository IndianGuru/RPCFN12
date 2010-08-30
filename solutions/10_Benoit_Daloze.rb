require "test_cycle_tracks"

def skip_tracks playlist, tracks
  return if tracks.zero?
  size = playlist.size
  if tracks >= 0
    tracks %= size
    playlist[0...size-tracks], playlist[size-tracks..-1] = playlist[tracks..-1], playlist[0...tracks]
  else
    tracks = tracks.abs % size
    playlist[0...tracks], playlist[tracks..-1] = playlist[size-tracks..-1], playlist[0...size-tracks]
  end
end

print "Program code length: "
puts "def skip_tracks(p,t)return if t.zero?; s=p.size;if t>=0;t%=s;p[0...s-t],p[s-t..-1]=p[t..-1],p[0...t]else t=t.abs%s;p[0...t],p[t..-1]=p[s-t..-1],p[0...s-t]end;end".length
puts
