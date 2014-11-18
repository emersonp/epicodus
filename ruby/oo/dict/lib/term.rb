class Term
    @@all_terms = []

    def Term.all
        @@all_terms
    end

    def Term.clear
        @@all_terms = []
    end

    def initialize(word, definition)
        @word = word
        @definition = definition
        @@all_terms << self
    end

    def word
        @word
    end

    def definition
        @definition
    end

    def edit_def(new_def)
        @definition = new_def
    end

    def edit_word(new_word)
        @word = new_word
    end

end
