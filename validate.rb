#! /usr/bin/env ruby

require 'safe_yaml'

schema = SafeYAML.load_file(ARGV[0], :safe=>true)

schema ? (puts schema) : (exit 1)
