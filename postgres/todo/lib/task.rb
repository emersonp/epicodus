require 'pg'

class Task
    def initialize(name)
        @name = name
    end

    def name
        @name
    end
    
    def self.all
        results = DB.exec("SELECT * FROM tasks;")
        tasks = []
        results.each do |result|
            name = result['name']
            tasks << Task.new(name)
        end
        tasks
    end

    def save
        DB.exec("INSERT INTO tasks (name) VALUES ('#{@name}');")
    end

    def ==(another_task)
        self.name == another_task.name
    end

end
