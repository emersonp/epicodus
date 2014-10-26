class Contact
    def initialize(first, last)
        @first = first
        @last = last
        @phone = []
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

    def add_phone(num)
        @phone << num
    end

    def phone
        @phone
    end

    def set_email(email)
        @email = email
    end

    def email
        @email
    end

    def set_address(street, city, state, zip)
        @street = street
        @city = city
        @state = state
        @zip = zip
    end

    def address
        "#{@street}\n#{@city}, #{@state}\t#{@zip}"
    end

    def set_street(street)
        @street = street
    end

    def street 
        @street
    end

    def set_city(city)
        @city = city
    end

    def city
        @city
    end

    def set_state(state)
        @state = state
    end

    def state
        @state
    end

    def set_zip(zip)
        @zip = zip
    end

    def zip
        @zip
    end
end
