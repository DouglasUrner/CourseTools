require 'fileutils'
require 'optparse'

# TODO: read default values.

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: course [options] name..."

  opts.on("-a", "--assignments", "Scafforld assignments") do |a|
    # TODO ensure that assignment(s) are contained in a unit.
    options[:assignments] = a
  end

  opts.on("-b", "--boilerplate", "Folder holding boilerplate files") do |b|
    options[:boilerplate] = b
  end

  opts.on("-u", "--unit", "Scafforld unit") do |u|
    # Units can contain assignments.
    options[:units] = u
  end

  opts.on("-v", "--[no-]verbose", "Run with verbose narration") do |v|
    options[:verbose] = v
  end

end.parse!

p options
p ARGV

ARGV.each do |c|

  # Course directory
  FileUtils.mkdir c

  options[:units].each do |u|
  end

end
