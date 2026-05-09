#!/usr/bin/env ruby
# frozen_string_literal: true

# Print 'Hello World!' to standard output.
def hello_world
  puts 'Hello World!'
end

# Execute the main logic. Return 0 on success, 1 on failure.
def main
  hello_world
  0
rescue SystemCallError => e
  warn "ERROR: #{e}"
  1
end

if __FILE__ == $PROGRAM_NAME
  exit(main)
end
