require './lib/task'

@list = []

def main_menu
    loop do
        puts "Press 'a' to add a task or 'l' to list all of your tasks."
        puts "Press 'x' to exit."
        puts "Press 'c' to mark a task complete."
        main_choice = gets.chomp
        if main_choice == 'a'
            add_task
        elsif main_choice == 'l'
            list_tasks
        elsif main_choice == 'x'
            puts "Good-bye!"
            exit
        elsif main_choice == 'c'
            mark_complete
        else
            puts "\nSorry, that wasn't a valid option.\n"
        end
    end
end

def add_task
    puts "Enter a description of the new task:"
    user_description = gets.chomp
    @list << Task.new(user_description)
    puts "Task added.\n\n"
end

def list_tasks
    puts "\nHere are all of your tasks:"
    menu_counter = 1
    @list.each do |task|
        if not task.complete?
            puts "#{menu_counter}: #{task.description}"
            menu_counter += 1
        end
    end
    puts "\n"
end

def mark_complete
    puts "\nWhich task would you like to complete?"
    list_tasks
    menu_selection = gets.chomp
    @list[menu_selection.to_i - 1].complete_toggle
end

main_menu
