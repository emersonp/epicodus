class Task
    def initialize(description)
        @description = description
        @complete = false
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
end
