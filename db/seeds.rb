user = User.create(first_name: 'charlie', last_name: 'cordoba', email: 'carzidco@gmail.com', password: '123456', password_confirmation: '123456')
100.times do |post|
  Post.create(date: Date.today, rational: "#{post} rationale content", user_id: user.id)
end

puts "100 Posts have been created"