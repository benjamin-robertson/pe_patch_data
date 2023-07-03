#!/usr/local/bin/ruby

require 'yaml'

# Load yaml
data = YAML.load(File.read("./common.yaml"))

expected_keys = ['patch_groups_as_a_hash','patching_options_as_a_hash']
data.keys.each | keys |  {
    if keys in expected_keys
        puts "found key #{keys}"
    end
}