class List
    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def ==(another_list)
        self.name == another_list.name
    end
end
