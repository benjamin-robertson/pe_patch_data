#!/usr/bin/ruby

#!/usr/local/bin/ruby
require 'yaml'

# Load yaml
data = YAML.load(File.read("./common.yaml"))

expected_keys = ['patch_groups_as_a_hash','patching_options_as_a_hash']
data.keys.each do | keys |
  if expected_keys.include?(keys)
    puts "found key #{keys}"
  else
    puts "Found invalid key #{keys}. Failing job."
    exit 1
  end
end