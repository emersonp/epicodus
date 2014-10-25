require 'rspec'
require 'task'
require 'list'

describe Task do
    it 'is initialized with a description' do
        test_task = Task.new('scrub the zebra')
        test_task.should be_an_instance_of Task
    end
    it 'lets you read the description out' do
        test_task = Task.new('scrub the zebra')
        test_task.description.should eq 'scrub the zebra'
    end
end

describe List do
    it 'starts out with an empty list of tasks' do
        test_list = List.new('School stuff')
        test_list.tasks.should eq []
    end
    it 'can add tasks' do
        test_list = List.new('School stuff')
        test_task = Task.new('Learn ruby')
        test_list.add_task(test_task)
        test_list.tasks.should eq [test_task]
    end
end
