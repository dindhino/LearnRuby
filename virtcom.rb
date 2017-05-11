class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

waktu = Time.now

puts "Time Now : #{waktu}"
puts " "
 
my_machine = Machine.new("Dindhino", "D-4360")

my_machine.create("virtcom.rb")

puts "Users: #{Machine.get_users}"

puts " "

scnd_machine = Machine.new("Dhino", "1301144360")

scnd_machine.create("Dindhino")

puts "Users: #{Machine.get_users}"
