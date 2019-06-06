require 'fileutils'

assignment_name = "42"

FileUtils.mkdir assignment_name

# Copy in boilerplate files.
FileUtils.touch "#{assignment_name}/README.md"
FileUtils.touch "#{assignment_name}/PITCHME.md"
FileUtils.touch "#{assignment_name}/index.md"

FileUtils.mkdir "#{assignment_name}/assets"
FileUtils.touch "#{assignment_name}/assets/.keep"
