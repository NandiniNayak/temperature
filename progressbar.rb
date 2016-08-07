# require 'progress_bar'
# bar = ProgressBar.new
#
# 100.times do
#   sleep 0.1
#   bar.increment!
# end

class ProgressBar
  def initialize(start,finish)
    @start = start
    @finish=finish
    @progress = 0
  end

  def increment
    @progress += 1
  end

  def output
    puts "#{@progress} / #{@finish}"
  end
end
