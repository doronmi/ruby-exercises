def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  hash.each do |key, value|
    if value.is_a?(Hash)
      res = contains?(value, search_value)
    else
      res = (value == search_value)
    end
    return true if res ==true
  end
  false
end


hash = {
      data: {
        duplicate: "e",
        stuff: {
          thing: {
            banana: "banana",
            more_stuff: {
              something: "foo"
            }
          }
        },
        info: {
          duplicate: "e",
          magic_number: 44,
          empty: nil
        }
      }
    }

puts contains?(hash,"foo")
