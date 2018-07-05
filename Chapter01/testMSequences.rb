#!/usr/bin/ruby

require 'MSequences'

MSequences.fromtoby(1, 10, 2) {|x| print x }  # Prints "13579"
puts
