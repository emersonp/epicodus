class Word
    def initialize(vocable, language="english")
        @vocable = vocable
        @language = language
    end

    def vocable
        @vocable
    end

    def language
        @language
    end

    def set_vocable(new_voc)
        @vocable = new_voc
    end

    def set_def(new_def)
        @def = new_def
    end
end
