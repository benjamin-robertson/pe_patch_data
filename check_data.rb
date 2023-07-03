#!/usr/local/bin/ruby

require 'yaml'

# Load yaml
data = YAML.load(File.read("./common.yaml"))

puts data