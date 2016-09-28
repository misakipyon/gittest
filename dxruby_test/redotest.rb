i=0

5.times do
  i += 1
  if i == 3
    redo
  end
  puts i
end