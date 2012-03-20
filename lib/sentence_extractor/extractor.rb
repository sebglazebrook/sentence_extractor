module SentenceExtractor
  
  
  class Extractor
    
    @language = nil
    @text = nil
    @delimiters = nil
    @first_letter_capitilization = nil
    
    def initialize( language = "en", text = "Insert some text here. Please!", delimiters = [".", "!","?"], first_letter_capitilization = false)
      @language = language
      @text = text
      @delimiters = delimiters
      @first_letter_capitilization = first_letter_capitilization
    end
    
  end
end