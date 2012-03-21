# SentenceExtractor

This gem takes takes a bunch of text and returns the sentences found based on language specific rules.
E.g. start and end delimiters etc.

## Installation

Add this line to your application's Gemfile:

    gem 'sentence_extractor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentence_extractor

## Usage

require 'sentence_extractor'

sen_ext = SentenceExtractor::Extractor.new

sentences = sen_ext.extract_sentences("Sentence 1! Sentence 2. Sentence 3?")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
