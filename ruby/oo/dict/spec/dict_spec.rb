require 'term'
require 'rspec'

describe Term do
    before do
        Term.clear
    end
    it 'lets you create a new word and definition' do
        test_term = Term.new('cat', 'a fuzzy little feline')
        test_term.word.should eq 'cat'
        test_term.definition.should eq 'a fuzzy little feline'
    end
    it 'lets you edit a word' do
        test_term = Term.new('cat', 'fuzzy feline')
        test_term.edit_word('Cat')
        test_term.word.should eq 'Cat'
    end
    it 'lets you edit a definition' do
        test_term = Term.new('cat', 'fuzzy feline')
        test_term.edit_def('a fuzzy feline')
        test_term.definition.should eq 'a fuzzy feline'
    end
    describe '#all_terms' do
        it 'stores multiple terms' do
            test_term = Term.new('cat', 'a fuzzy little feline')
            test_term = Term.new('dog', 'cute, but smells bad wet')
            Term.all.length.should eq 2
        end
    end
end
