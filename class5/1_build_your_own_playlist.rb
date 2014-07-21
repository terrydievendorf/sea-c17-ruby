#!/usr/bin/env ruby
#
# Section 11.8 on page 92
# 4 points
#
# Building a playlist is easy. It’s just a regular text file where each line is
# a path to file, like this:
#
#   songs/Autobiografia.mp3
#
# What makes it a playlist? Well, you have to give the file the .m3u extension,
# like playlist.m3u.
#
# Write a program that searches the songs/ directory for both .mp3 and .m4a
# files and then builds a valid playlist.m3u file. Use the `shuffle` method,
# described on page 75, to mix up the list of paths before saving them to the
# playlist.m3u file.
#
# Then open the playlist.m3u file in either iTunes or VLC. I'll be testing the
# playlist to ensure it actually works.
#
# Hint: Here's what I expect the program to output to the shell:
#
#   $ ruby 1_build_your_own_playlist.rb
#   Generating a shuffled playlist of 16 songs => complete!
