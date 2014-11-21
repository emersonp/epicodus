require 'pg'
require './lib/task'

DB = PG.connect({:dbname => 'todo'})

def welcome
    puts "Welcome to the To Do List!"
    menu
end
