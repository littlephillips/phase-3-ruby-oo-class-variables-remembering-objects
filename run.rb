
# use class variables to store instance of a class

# tracking all songs entered by the user & allow user to browse their existing songs in our app

class Song
  attr_accessor :name
  @@all = []         #arrays are perfect t for storing lists of data, then create a class method to access its contents

  def initialize(name)   #inside this method we are in method scope
    @name = name
    @@all << self    #reps new object that's been created by #new in class Song
  end

  def self.all   #class method that gives access to class variable
    @@all
  end

#to print all song names create a class method and iterate thru the accessed array to get each name

  def self.print_all_song_names
    self.all.each do |song|
      puts song.name 
    end
  end
end

phill = Song.new("Lets")
hotline_bling = Song.new("Hotline Bling")

# puts phill.name
# puts hotline_bling.name
puts Song.all


























