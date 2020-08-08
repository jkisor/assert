def assert(value)
  raise unless value
end

def assert_error(&block)
  block.call
rescue
else
  raise
end

# Successful tests succeed
assert(true)

# Failing tests fail
assert_error { assert(false) }

# Fail when expect error never happens
assert_error { assert_error { 1+1 } }

puts "Success"