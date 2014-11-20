require 'pry'

require './lib/term.rb'
require './lib/word.rb'
require './lib/definition.rb'

def add_term
    puts "Please enter a word:"
    new_word = Word.new(gets.chomp)
    puts "Please enter its definition:"
    new_def = Definition.new(gets.chomp)
    term = Term.new(new_word, new_def)
end

def edit_term(term)
    puts "Please choose a vocable to edit (enter 0 for none):"
    count = 1
    term.word.each do |word|
        puts "#{count}. #{word.vocable}"
    end
    vocable_choice = gets.chomp.to_i
    if vocable_choice != 0
        puts "Please enter a new vocable for #{term.word[vocable_choice-1].vocable}:"
        term.word[vocable_choice-1].set_vocable(gets.chomp)
    end
    puts "Please choose a meaning to edit (enter 0 for none):"
    count = 1
    term.definition.each do |definition|
        puts "#{count}. #{definition.meaning}"
    end
    meaning_choice = gets.chomp.to_i
    if meaning_choice != 0
        puts "Please enter a new meaning for #{term.definition[meaning_choice-1].meaning}:"
        term.definition[meaning_choice-1].set_def(gets.chomp)
    end
end

def full_def(term)
    term.word.each do |word|
        puts "#{word.vocable.capitalize} (#{word.language})"
    end
    defCount = 1
    term.definition.each do |definition|
        puts "#{defCount}. #{definition.meaning} (#{definition.language})"
    end
end

def list_terms(term_array)
    count = 1
    term_array.each do |term|
        term.word.each do |word|
            if word.language == "english"
                puts "#{count}. #{word.vocable}"
            end
        end
        count += 1
    end
    puts ""
end

def search_for_word(word_search)
    Term.all.each do |term|
        term.word.each do |word|
            if word.vocable.include? word_search
                return term
            end
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
