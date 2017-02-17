require 'clockwork'
require_relative './boot'
require_relative './environment'

module Clockwork
  every(1.minute, 'main_task.say_time') do
    puts "Hi!  Right now time is #{Time.current}"
  end
end