module SentenceExtractor
  
  
  class Extractor
    
    @language = nil
    @text = nil
    @delimiters = nil
    @first_letter_capitilization = nil
    
    def initialize( language = "en", delimiters = [".", "!","?"], first_letter_capitilization = false)
      @language = language
      @delimiters = delimiters
      @first_letter_capitilization = first_letter_capitilization
    end
    
    def extract_sentences(text = "Insert some text here. Please!")
      @text = text
      get_sentences
    end
    
    private
    # returns an array of sentences
    def get_sentences
      sentences = Array.new
      # go through array of delimiters and break up the strings.
      @delimiters.each do |delimiter|
        #@TODO
      end
    end
    
   end
end