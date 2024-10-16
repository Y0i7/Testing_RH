#首先我们需要一个基础类来建立你的组件，并尝试一些基本的 ruby​​ 结构。
#重要提示：如有必要，请重新排序用户表单，此测试没有任何数据库，它只是一个基本算法
#由@Y0I7 和@0RY3 创建

class User
  @@num = 0 # 用于计数用户

  def initialize(name, age, career)
    @id = @@num += 1
    @name = name
    @age = age
    @career = career
  end

  def user_info
    "id: #{@id}\nname: #{@name}\nage: #{@age}\ncareer: #{@career}"
  end
end

users_saved = Array.new

loop do
  print '
  ==============================
            User Form
  ==============================
  '

  puts 'Write a name: '
  name = gets.chomp
  puts 'Write an age: '
  age = gets.chomp
  puts 'Write a career: '
  career = gets.chomp

  user = User.new(name, age, career)
  users_saved << user

  puts "\nUser saved:\n#{user.user_info}"

  puts 'Would you like to enter another user? (y/n)'
  ans = gets.chomp.downcase

  break if ans != 'y'
end

puts "\nAll saved users:"
users_saved.each do |user|
  puts user.user_info
end