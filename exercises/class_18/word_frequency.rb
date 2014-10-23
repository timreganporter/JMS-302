# TODO: make this a command-line parameter
file = "ebola_message_guidelines.txt"

#make sure file exists
unless File.exists? file
    puts "#{file} doesn't exist"
    exit
end

# hash to story our words
word_counts = Hash.new(0)

# read through file line by line, counting words and adding to hash with the count
File.open(file, "r").each_line do |line|
    # split on non-word charcaters --- scan would be better than split and would save some looping, but you don't know that yet.
    words = line.chomp.split(/\W+/)
    # go through all words on that line and add one to count for each word occurence
    words.each do |word|
        word_counts[word] += 1
    end
end

# write out words with counts
File.open("count-#{file}", "w") do |f|
    #f.write word_counts # just debugging to see entire hash
    # sort the array by the count and then go through each to print out nicely
    word_counts.sort_by { |key, value| value }.each do |word, count|
        f.write "#{word} = #{count}\n"
    end
end
