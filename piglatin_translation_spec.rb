require 'rspec'
require_relative 'pig_latin.rb'

describe PigLatinTranslation do
  
  it 'translates words that begin with a consonant' do
    expect(PigLatinTranslation.new("this").translate).to eql("isthay")
  end

  it 'translates words that begin with a cluster of consonants' do
    expect(PigLatinTranslation.new("that").translate).to eql("atthay")
  end

  it 'translates words that begin with vowels' do
    expect(PigLatinTranslation.new("other").translate).to eql("otherway")
  end

  it 'translates phrases' do
    expect(PigLatinTranslation.new("this that and the other").translate).to eql("isthay atthay andway ethay otherway")
  end

end