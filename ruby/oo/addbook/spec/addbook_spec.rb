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
    it 'lets you read the phone number out' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.set_phone('5035551234')
        test_person.phone.should eq '5035551234'
    end
    it 'lets you read the email out' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.set_email('frank.beans@gmail.com')
        test_person.email.should eq 'frank.beans@gmail.com'
    end
    it 'lets you read the address out' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.set_street('1234 Main St')
        test_person.set_city('Portland')
        test_person.set_state('OR')
        test_person.set_zip('97111')
        test_person.street.should eq '1234 Main St'
        test_person.city.should eq 'Portland'
        test_person.state.should eq 'OR'
        test_person.zip.should eq '97111'
    end
    it 'lets you set the full address' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.set_address('1234 Main St', 'Portland', 'OR', '97111')
        test_person.street.should eq '1234 Main St'
        test_person.city.should eq 'Portland'
        test_person.state.should eq 'OR'
        test_person.zip.should eq '97111'
    end
    it 'lets you read out the full address' do
        test_person = Contact.new('Frank', 'Beans')
        test_person.set_address('1234 Main St', 'Portland', 'OR', '97111')
        test_person.address.should eq "1234 Main St\nPortland, OR\t97111"
    end
end

