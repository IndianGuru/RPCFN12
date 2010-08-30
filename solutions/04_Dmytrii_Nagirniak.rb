require "test_cycle_tracks"

def skip_tracks(playlist, skip)
  if skip > 0
    skip.times { playlist.push playlist.shift }
  else
    skip.abs.times { playlist.unshift playlist.pop }
  end
  playlist
end

print "Program code length: "
puts "def skip_tracks(p,s)if s>0;s.times{p.push p.shift}else s.abs.times{p.unshift p.pop}end;p end".length
puts
