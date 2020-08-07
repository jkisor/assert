def assert(value)
  raise unless value
end

def assert_error
  callable = -> { assert(false) }
  callable.call
rescue
end

# Successful tests succeed
assert(true)

# Failing tests fail
assert_error

puts "Success"