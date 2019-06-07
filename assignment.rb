require 'fileutils'
require 'optparse'

# TODO: read default values.
# TODO: command name from "argv[0]"

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: assignment [options] name..."

  opts.on("-b", "--boilerplate", "Folder holding boilerplate files") do |b|
    options[:boilerplate] = b
  end

  opts.on("-v", "--[no-]verbose", "Run with verbose narration") do |v|
    options[:verbose] = v
  end

end.parse!

p options
p ARGV

ARGV.each do |a|

  FileUtils.mkdir a

  # TODO: Copy in boilerplate files from boilerplate folder.
  # TODO: Edit boilerplate files.
  FileUtils.touch "#{a}/README.md"
  FileUtils.touch "#{a}/PITCHME.md"
  FileUtils.touch "#{a}/index.md"

  FileUtils.mkdir "#{a}/assets"
  FileUtils.touch "#{a}/assets/.keep"

end
