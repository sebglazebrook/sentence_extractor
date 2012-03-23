# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sentence_extractor/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Seb Glazebrook"]
  gem.email         = ["me@sebglazebrook.com"]
  gem.description   = %q{This gem takes takes a bunch of text and returns the sentences found based on language specific rules. E.g. start and end delimiters etc.}
  gem.summary       = %q{Give it some text and it will return an array of sentences.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "sentence_extractor"
  gem.require_paths = ["lib"]
  gem.version       = SentenceExtractor::VERSION
  gem.add_development_dependency "rspec", "~> 2.6"
end
