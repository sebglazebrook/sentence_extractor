require 'lib/sentence_extractor.rb'

describe SentenceExtractor::Extractor do
  it "Sould find a sentence with a full stop" do
    sen_exc = SentenceExtractor::Extractor.new
    sen_exc.extract_sentences("Hello.").should eql(["Hello."])
  end
  
  it "Sould find a sentence with a exclamation mark" do
    sen_exc = SentenceExtractor::Extractor.new
    sen_exc.extract_sentences("Hello!").should eql(["Hello!"])
  end
  
  it "Sould find a sentence with a question mark" do
    sen_exc = SentenceExtractor::Extractor.new
    sen_exc.extract_sentences("Hello?").should eql(["Hello?"])
  end
  
  it "Should not find anything" do
    sen_exc = SentenceExtractor::Extractor.new
    sen_exc.extract_sentences("Hello").should eql([])
  end
  
  it "Should find three sentences with no leading or trailing spaces" do
    sen_exc = SentenceExtractor::Extractor.new
    sen_exc.extract_sentences("Hello. How are you? Good thanks! ").should eql(["Hello.", "How are you?", "Good thanks!"])
  end
  
  it "Should leave in sentences where that don't start with capital letters" do
    sen_exc = SentenceExtractor::Extractor.new(first_letter_capitalization = false)
    sen_exc.extract_sentences("hello. How are you? good thanks! ").should eql(["hello.", "How are you?", "good thanks!"])
  end
  
  
  
end