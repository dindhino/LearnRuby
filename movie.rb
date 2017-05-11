movies = {
    Minions: 3.5,
    Booyah: 4
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp.downcase

case choice
when "add"
    puts "Title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been added with a rating of #{rating}."
    else
        puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
    end
when "update"
    puts "Title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found!"
    else
        puts "Rating: "
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "#{title} has been updated with new rating of #{rating}."
    end
when "display"
    movies.each do |movie, rating|
        puts "#{movie}: #{rating}"
    end
when "delete"
    puts "Title: "
    title = gets.chomp
    if movies[title.to_sym].nil?
        puts "Movie not found!"
    else
        movies.delete(title)
        puts "#{title} has been deleted."
    end
else
    puts "Error!"
end
