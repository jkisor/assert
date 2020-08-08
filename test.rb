def assert(value)
  raise unless value
end

def assert_error(callable)
  callable.call
rescue
end

# Successful tests succeed
assert(true)

# Failing tests fail
assert_error(-> { assert(false) })

puts "Success"