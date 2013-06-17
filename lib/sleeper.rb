class Sleeper
  @queue = :sleeper

  def self.perform(seconds)
    puts "Sleeping for #{seconds} seconds"
    sleep seconds.to_i
    puts "DONE! Slept for #{seconds} seconds"
  end
end
