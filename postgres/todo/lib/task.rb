require 'pg'

class Task
    def initialize(name, list_id)
        @name = name
        @list_id = list_id
        @complete = false
    end

    def name
        @name
    end

    def list_id
        @list_id
    end

    def complete
        @complete
    end
    
    def self.all
        results = DB.exec("SELECT * FROM tasks WHERE complete = false;")
        tasks = []
        results.each do |result|
            name = result['name']
            list_id = result['list_id'].to_i
            complete = result['complete']
            tasks << Task.new(name, list_id)
        end
        tasks
    end

    def self.all_from_list(list)
        results = DB.exec("SELECT * FROM tasks WHERE list_id = #{list};")
        tasks = []
        results.each do |result|
            name = result['name']
            list_id = result['list_id'].to_i
            complete = result['complete']
            tasks << Task.new(name, list_id)
        end
        tasks
    end
    
    def self.all_complete_from_list(list)
        results = DB.exec("SELECT * FROM tasks WHERE list_id = #{list} AND complete = false;")
        tasks = []
        results.each do |result|
            name = result['name']
            list_id = result['list_id'].to_i
            complete = result['complete']
            tasks << Task.new(name, list_id)
        end
        tasks
    end

    def mark_complete
        @complete = true
        self.save
    end

    def save
        DB.exec("INSERT INTO tasks (name, list_id, complete) VALUES ('#{@name}', #{@list_id}, #{@complete});")
    end

    def ==(another_task)
        self.name == another_task.name && self.list_id == another_task.list_id
    end

end
