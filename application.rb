require 'pi_piper'
include PiPiper

watch :pin => 23 do
  puts "Pin changed from #{last_value} to #{value}"
end

#Or

after :pin => 23, :goes => :high do
  puts "Button pressed"
end

PiPiper.wait

loop do
  sleep(4)
  puts rand(1000)
end