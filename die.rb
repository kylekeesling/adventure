class Die

  def roll
    @numberShowing = 1 + rand(6)
    #rand(6) returns a random-ish number between 0-5
  end

  def showing
    @numberShowing
  end

end
