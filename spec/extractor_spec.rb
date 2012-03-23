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
  
end