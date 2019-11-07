require "pry"
require "colorize"

def puts_git(cmd)
  puts `git #{cmd} - h`
end

def menu
  puts "-- Main Menu --".colorize(:cyan)
  puts "1: Enter git command".colorize(:cyan)
  puts "2: Exit".colorize(:cyan)
  
  case gets.to_i
  when 1
    puts "Enter git command:".colorize(:green)
    puts_git(gets.strip)
    menu
  when 2
    exit
  else 
    puts "Invalid choice".colorize(:red)
    menu
  end
end

menu