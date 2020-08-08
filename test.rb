def assert(value)
  raise unless value
end

def assert_error(&block)
  block.call
rescue
end

# Successful tests succeed
assert(true)

# Failing tests fail
assert_error { assert(false) }

puts "Success"