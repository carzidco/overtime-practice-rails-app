100.times do |post|
  Post.create(date: Date.today, rational: "#{post} rationale content")
end

puts "100 Posts have been created"