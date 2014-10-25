class Task
    def initialize(description)
        @description = description
        @complete = false
        @priority = 3
    end

    def description
        @description
    end

    def complete?
        @complete
    end

    def complete_toggle
        if @complete
            @complete = false
        else
            @complete = true
        end
    end

    def set_priority(value)
        @priority = value
    end

    def priority
        @priority
    end
end
