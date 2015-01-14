require 'pg'
require 'pry'

class Task
    def initialize(name, list_id, id = nil, duedate = nil)
        @name = name
        @list_id = list_id
        @id = id
        @duedate = duedate
        @complete = false
    end

    def name
        @name
    end

    def list_id
        @list_id
    end

    def duedate
        @duedate
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
            id = result['id'].to_i
            duedate = Date.strptime(result['duedate'], "%Y-%m-%d")
            complete = result['complete']
            tasks << Task.new(name, list_id, id, duedate)
        end
        tasks
    end

    def self.all_from_list(list)
        results = DB.exec("SELECT * FROM tasks WHERE list_id = #{list} AND complete = false;")
        tasks = []
        results.each do |result|
            name = result['name']
            list_id = result['list_id'].to_i
            id = result['id'].to_i
            duedate = Date.strptime(result['duedate'], "%Y-%m-%d")
            complete = result['complete']
            tasks << Task.new(name, list_id, id, duedate)
        end
        tasks
    end
    
    def self.all_complete_from_list(list)
        results = DB.exec("SELECT * FROM tasks WHERE list_id = #{list} AND complete = false;")
        tasks = []
        results.each do |result|
            name = result['name']
            list_id = result['list_id'].to_i
            id = result['id'].to_i
            if result['duedate']
                duedate = Date.strptime(result['duedate'], "%Y-%m-%d")
            else
                duedate = nil
            end
            complete = result['complete']
            tasks << Task.new(name, list_id, id, duedate)
        end
        tasks
    end

    def delete
        results = DB.exec("DELETE FROM tasks WHERE id = #{@id};")
    end

    def mark_complete
        @complete = true
        self.update
    end

    def save
        date = @duedate
        results = DB.exec("INSERT INTO tasks (name, list_id, complete, duedate) VALUES ('#{@name}', #{@list_id}, #{@complete}, '#{date.year}-#{date.month}-#{date.day}') RETURNING id;")
        @id = results.first['id'].to_i
    end

    def update
        if @date
            results = DB.exec("UPDATE tasks SET name = '#{@name}', list_id = #{@list_id}, complete = #{@complete}, duedate = '#{@duedate.year}-#{@duedate.month}-#{@duedate.day}' WHERE id = #{@id};")
        else
            results = DB.exec("UPDATE tasks SET name = '#{@name}', list_id = #{@list_id}, complete = #{@complete} WHERE id = #{@id};")
        end
    end

    def ==(another_task)
        self.name == another_task.name && self.id == another_task.id
    end

end
