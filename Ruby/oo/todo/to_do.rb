require './lib/task'
require './lib/list'

@macro_list = []

def main_menu
    loop do
        puts "Press 'l' to list all of your lists."
        puts "Press 'x' to exit."
        puts "Press 'c' to mark a task complete."
        main_choice = gets.chomp
        if main_choice == 'a'
            add_task
        elsif main_choice == 't'
            list_tasks
        elsif main_choice == 'l'
            list_lists
        elsif main_choice == 'x'
            puts "Good-bye!"
            exit
        else
            puts "\nSorry, that wasn't a valid option.\n"
        end
    end
end

def add_task(list)
    puts "\nEnter a description of the new task:"
    user_description = gets.chomp
    list.add_task(Task.new(user_description))
    puts "Task added.\n\n"
end

def add_list
    puts "\nEnter a description of the new list:"
    user_description = gets.chomp
    @macro_list << List.new(user_description)
end

def list_lists
    loop do
        puts "\nHere are all of your lists:"
        menu_counter = 1
        @macro_list.each do |list|
            puts "#{menu_counter}: #{list.description}"
            menu_counter += 1
        end
        puts "\n\nPress '#' to choose a list, or 'x' to exit to main menu.\n"
        puts "Press 'a' to add a list.\n"
        menu_choice = gets.chomp
        if menu_choice == 'x'
            return
        elsif menu_choice == 'a'
            add_list
        else
            list_tasks(menu_choice.to_i)
        end
    end
end

def list_tasks(list_choice)
    loop do
        temp_list = @macro_list[list_choice - 1]
        puts "\nHere are all of your tasks in list #{temp_list.description}:"
        menu_counter = 1
        temp_list.tasks.each do |task|
            if not task.complete?
                puts "#{menu_counter}: #{task.description}"
            end
            menu_counter += 1
        end
        puts "\n\nPress 'a' to add a task, or 'c' to toggle a task complete."
        puts "Press 'p' to set a tasks priority value.\n"
        puts "Press 'x' to return to the list menu.\n"
        menu_selection = gets.chomp
        if menu_selection == 'x'
            return
        elsif menu_selection == 'a'
            add_task(temp_list)
        elsif menu_selection == 'c'
            mark_complete(temp_list)
        elsif menu_selection == 'p'
            set_priority(temp_list)
        end
    end
end

def mark_complete(list)
    puts "\nWhich task would you like to complete?"
    menu_selection = gets.chomp
    list.tasks[menu_selection.to_i - 1].complete_toggle
end

def set_priority(list)
    loop do
        puts "Please enter a rating between 1 and 5.\n"
        priority_val = gets.chomp.to_i
        if priority_val >= 1 and priority_val <= 5
            list.set_priority(priority_val)
            return
        end
    end


main_menu
