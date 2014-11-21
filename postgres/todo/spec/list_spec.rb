require 'rspec'
require 'pg'
require 'list'

DB = PG.connect({:dbname => 'todo_test'})

RSpec.configure do |config|
    config.after(:each) do
        DB.exec("DELETE FROM lists *;")
    end
end

describe List do
    it 'starts off with no lists' do
        List.all.should eq []
    end

    it 'is initialized with a name' do
        list = List.new('Epicodus stuff')
        list.should be_an_instance_of List
    end
    
    it 'tells you its name' do
        list = List.new('Epicodus stuff')
        list.name.should eq 'Epicodus stuff'
    end

    it 'is the same list if it has the same name' do
        list1 = List.new('Epicodus stuff')
        list2 = List.new('Epicodus stuff')
        list1.should eq list2
    end

    it 'lets you save lists to the database' do
        list = List.new('learn SQL')
        list.save
        List.all.should eq [list]
    end
end
