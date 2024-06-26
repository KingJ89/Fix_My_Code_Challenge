# Sort integer arguments (ascending)

def sort_integers(args)
  result = []

  args.each do |arg|
    # Skip if not an integer
    next if arg !~ /^-?[0-9]+$/

    # Convert to integer
    i_arg = arg.to_i
    
    # Insert result at the right position
    is_inserted = false
    i = 0
    l = result.size
    while !is_inserted && i < l do
      if result[i] < i_arg
        i += 1
      else
        result.insert(i, i_arg)
        is_inserted = true
        break
      end
    end
    result << i_arg if !is_inserted
  end

  result
end

puts sort_integers(ARGV)
