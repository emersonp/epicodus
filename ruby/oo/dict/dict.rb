require './lib/term.rb'

def add_term
    puts "Please enter a word:"
    new_word = gets.chomp
    puts "Please enter its definition:"
    new_def = gets.chomp
    term = Term.new(new_word, new_def)
end

def edit_term(term)
    puts "Current word is #{term.word}. Please enter a new word."
    term.edit_word(gets.chomp)
    puts "Current definition is\n\t'#{term.definition}'\nPlease enter a new definition."
    term.edit_def(gets.chomp)
end

def full_def(term)
    puts "#{term.word.capitalize}:\n\t#{term.definition}"
end

def list_terms(term_array)
    count = 1
    term_array.each do |term|
        puts "#{count}. #{term.word}: #{term.definition}"
        count += 1
    end
    puts ""
end

def search_for_word(word_search)
    Term.all.each do |term|
        if term.word.include? word_search
            return term
        end
    end
    return 0
end

def select_term
    puts "\nPlease choose a term."
    list_terms(Term.all)
    menu_choice = gets.chomp.to_i
    return Term.all[menu_choice - 1]
end

def main
    puts "Welcome to Parker's Dictionary Program"
    while true
        puts "\nEnter 'c' to create a term, or 'l' to list them."
        puts "Enter 's' to show a word's definition, or 'e' to edit the word."
        puts "Enter '?' to search for a word."
        puts "Enter 'd' to delete a word."
        puts "Enter 'x' to exit."
        menu_choice = gets.chomp
        case menu_choice
        when "c"
            add_term
        when "l"
            puts ""
            list_terms(Term.all)
        when "s"
            choice_show_term = select_term
            full_def(choice_show_term)
        when "e"
            choice_edit_term = select_term
            edit_term(choice_edit_term)
        when "?"
            puts "Please enter a word to search for:"
            word_search = gets.chomp
            searched_for_term = search_for_word(word_search)
            if searched_for_term != 0
                puts "\n"
                full_def(searched_for_term)
            else
                puts "\nNo term matching '#{word_search}' found."
            end
        when "d"
            choice_del_term = select_term
            puts "Are you sure you want to delete term #{choice_del_term.word}? This deletion includes its definition. (y/n)"
            del_choice = gets.chomp
            if del_choice == "y"
                Term.all.delete(choice_del_term)
            end
        when "x"
            exit
        end
    end
end

main
