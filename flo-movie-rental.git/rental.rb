class Rental
  attr_reader :movie, :days_rented

  def initialize(movie, days_rented)
    @movie, @days_rented = movie, days_rented
  end

  #Refactoring: extracted out of statement
  #Moved to rental.rb where it should be :)
  #Moved charge method to movie.rb

  #new charge method:
  def charge
    movie.charge(days_rented)
  end

  def frequent_renter_points
    movie.frequent_renter_points(days_rented)
  end
end
