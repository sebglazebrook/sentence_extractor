module SentenceExtractor
  
  
  class Extractor
    
    @language = nil
    @text = nil
    @delimiters = nil
    @first_letter_capitilization = nil
    @reg_exp = nil
    
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
      if possible_sentences?
        sentences = get_array_of_sentences
      end
      sentences
    end
    
    def possible_sentences?
      # build regexp
      @reg_exp = "\\" + @delimiters.join("|\\")
      # check for any delimiters       
      @text =~ /#{@reg_exp}/
    end
    
    def get_array_of_sentences
      sentences = Array.new
      remaining_text = @text
      match = true
      # go through and find all sentences
      while match != nil
        sentence_end_point = remaining_text =~ /#{@reg_exp}/  # check for sentences
        if sentence_end_point
          sentence = remaining_text[0..sentence_end_point].strip # strip sentence of leading and trailing spaces
          sentences << sentence if (!@first_letter_capitilization || first_letter_uppercase?(sentence))  # add new sentence to array
          remaining_text = remaining_text[sentence_end_point+1..remaining_text.size]  # set the rest of the text to be processed.
        else
          match = nil
        end
      end
      sentences
    end
    
    def first_letter_uppercase? sentence
      if sentence[0..0] == sentence[0..0].upcase
        return true
      else
        return false
      end
    end
    
   end
   
end