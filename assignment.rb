require 'fileutils'
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: assignment [options] name..."

  opts.on("-v", "--[no-]verbose", "Run with verbose narration") do |v|
    options[:verbose] = v
  end

  opts.on("-b", "--boilerplate", "Specify location of boilerplate files") do |b|
    options[:boilerplate] = b
  end
end.parse!

p options
p ARGV

assignment_name = "42"

FileUtils.mkdir assignment_name

# Copy in boilerplate files.
FileUtils.touch "#{assignment_name}/README.md"
FileUtils.touch "#{assignment_name}/PITCHME.md"
FileUtils.touch "#{assignment_name}/index.md"

FileUtils.mkdir "#{assignment_name}/assets"
FileUtils.touch "#{assignment_name}/assets/.keep"
