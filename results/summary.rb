open 'summary.log', 'w' do |fw|
  Dir["*.txt"].collect do |file|
    [(data = IO.readlines(file))[0].split.last.to_i, file, data.include?("..............\n")]
  end.sort.each do |len, name, good|
    fw.puts name.gsub('_', ' ')[0..-5] + ' : ' + len.to_s + " #{'***' unless good}"
  end
end
