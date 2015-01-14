class List
    def self.all
        results = DB.exec("SELECT * FROM lists;")
        lists = []
        results.each do |result|
            name = result['name']
            id = result['id'].to_i
            lists << List.new(name, id)
        end
        lists
    end

    def self.is_empty?
        lists = []
        results = DB.exec("SELECT * FROM lists;")
        results.each do |result|
            name = result['name']
            id = result['id'].to_i
            lists << List.new(name, id)
        end
    end

    def ==(another_list)
        self.name == another_list.name && self.id == another_list.id
    end

    def id
        @id
    end

    def initialize(name, id = nil)
        @name = name
        @id = id
    end

    def name
        @name
    end
    
    def save
        results = DB.exec("INSERT INTO lists (name) VALUES ('#{@name}') RETURNING id;")
        @id = results.first['id'].to_i
    end

    def delete
        results = DB.exec("DELETE FROM tasks WHERE list_id = #{@id};")
        results = DB.exec("DELETE FROM lists WHERE id = #{@id};")
    end
end
