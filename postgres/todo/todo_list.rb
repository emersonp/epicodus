require 'pg'
require './lib/task'
require './lib/list'

DB = PG.connect({:dbname => 'todo'})

def display_all_lists
    display_counter = 1
    puts "\n"
    List.all.each do |list|
        puts "#{display_counter}. #{list.name}"
        display_counter += 1
    end
end

def display_list
    puts "\nDisplay which list?"
    display_all_lists
    puts "\n"
    user_choice = gets.chomp.to_i
    list_choice = List.all[user_choice - 1]
    Task.all_from_list(list_choice.id).each do |task|
        puts "#{task.name}"
    end
end

def new_list
    puts "\nPlease enter a name for your new list."
    list_name = gets.chomp
    list = List.new(list_name)
    list.save
end

def new_task
    puts "\nAdd task to which list?"
    display_all_lists
    user_choice = gets.chomp.to_i
    list_choice = List.all[user_choice - 1]
    puts "\nPlease enter a name for your new task."
    task_name = gets.chomp
    task = Task.new(task_name, list_choice.id)
    task.save
end

def menu
    puts "\nPress 'l' to create a new list, or 't' to create a new task."
    puts "Press 'd' to display a list, or 'a' to display all lists."
    puts "Press '?' to search."
    puts "Press 'x' to exit."
    menu_choice = gets.chomp
    case menu_choice
    when "l"
        new_list
    when "t"
        new_task
    when "d"
        display_list
    when "a"
        display_all_lists
    when "x"
        quit_program
    end
end

def quit_program
    puts "\nGoodbye!"
    exit
end

def welcome
    puts "\nWelcome to Parker's To Do List!"
end

def main
    welcome
    while true
        menu
    end
end

main
