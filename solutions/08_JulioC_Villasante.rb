require "test_cycle_tracks"

def skip_tracks(playlist, tracks)
  return if tracks.abs >= playlist.size or tracks.zero?
  
  if tracks > 0
    playlist.push(playlist.shift(tracks)).flatten!
  else
    playlist.unshift(playlist.pop(tracks.abs)).flatten!
  end
end

print "Program code length: "
puts "def skip_tracks(p,t)return if t.abs>=p.size or t.zero?;if t>0;p.push(p.shift(t)).flatten!else p.unshift(p.pop(t.abs)).flatten!end;end".length
puts
