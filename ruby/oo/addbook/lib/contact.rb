class Contact
    def initialize(first, last)
        @first = first
        @last = last
    end
    
    def first
        @first
    end
    
    def last
        @last
    end

    def full
        "#{@first} #{@last}"
    end
end
