class Timer

  def seconds
    @seconds = 0
  end

  def seconds=(s)
    @seconds = s
  end

  def time_string
    Time.at(@seconds).utc.strftime("%H:%M:%S")
  end

end
