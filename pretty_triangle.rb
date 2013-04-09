def print_triangle(rows)
  stars=1
  rows.times do
    print "#{'*' * stars}"
    puts
    stars = stars + 1
  end
end

print_triangle(5)
puts
print_triangle(2)
puts