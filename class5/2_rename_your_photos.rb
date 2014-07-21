#!/usr/bin/env ruby
#
# Section 11.8 on page 92
# 4 points
#
# Write a program that copies .jpg files from a source directory to a target
# directory, appending the file's size to the end of the file name.
#
# So, assuming there's a source file that's 12,345 bytes long:
#
#   source/photo.jpg
#
# the program should copy it to the target file:
#
#   target/photo_12345.jpg
#
# A few methods you might find useful are:
#
# File.size(file_path) → integer
#
#   Returns the size of file_path.
#
# File.basename(file_path [, suffix]) → base_name
#
#   Returns the last component of the name given in file_path.
#   If suffix is given and present at the end of file_path, it is removed.
#
#   File.basename("class5/ruby.rb")          #=> "ruby.rb"
#   File.basename("class5/ruby.rb", ".rb")   #=> "ruby"
#
# FileUtils.copy_file(source_path, target_path)
#
#   Copies the file contents of source_path to target_path, both of which must
#   be a file path.
#
# Hint: Here's what I expect the program to output to the shell:
#
#   $ ruby 2_rename_your_photos.rb SOURCE TARGET
#   Copying 10 photos => complete!

require "fileutils"

source = ARGV[0]
target = ARGV[1]

unless source && target
  puts "Usage: 2_rename_your_photos.rb SOURCE TARGET"
  exit
end

# your code here
