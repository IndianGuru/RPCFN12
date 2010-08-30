Dir["./*.rb"].each do |file|
  `ruby #{file}` unless file =~ /^test/
end