class Term
    @@all_terms = []

    def Term.all
        @@all_terms
    end

    def Term.clear
        @@all_terms = []
    end

    def initialize(word, definition)
        @word = []
        @word << word
        @definition = []
        @definition << definition
        @@all_terms << self
    end

    def word
        @word
    end

    def definition
        @definition
    end
end
