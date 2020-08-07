def assert(value)
  raise unless value
end

# Successful tests succeed
assert(true)

# Failing tests fail
begin
  assert(false)
rescue
end

puts "Success"