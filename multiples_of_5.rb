multiples_of_5 = Proc.new do |n|
  n % 5 == 0
end

print (1..100).to_a.select(&multiples_of_5)
