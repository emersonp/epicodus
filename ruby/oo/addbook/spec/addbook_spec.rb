# require 'addbook'
require 'book'
require 'contact'
require 'rspec'

describe Book do
    #before do
    #    Book.clear
    #end
    it 'lets you read the description out' do
        test_book = Book.new('Work Friends')
        test_book.description.should eq 'Work Friends'
    end
end

describe Contact do
    it 'lets you read the first and last name out' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.first.should eq 'Frank'
        test_person.last.should eq 'Beans'
    end
    it 'lets you read the full name out' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.full.should eq 'Frank Beans'
    end
end

