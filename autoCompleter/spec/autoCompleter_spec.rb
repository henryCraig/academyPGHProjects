require 'autocompleter'

describe Autocompleter do
    let (:completer) { Autocompleter.new }

    context "a new, blank autocompleter" do
        it "doesn't think it has any word you ask it about" do
            expect(completer.has_word?("marshmallow")).to be false
        end

        it "doesn't return any completions for anything" do
            expect(completer.completions_for("ma")).to eql []
        end

        it "can add some words that it knows about" do
            expect{completer.add_words(["one", "two", "three"])}.to_not raise_error
        end
    end




    context "an autocompleter with words in it" do
        before(:each) do
            completer.add_words(["dogma", "dog", "jar", "harpoon", "sauna"])
        end

        context ".has_word?" do
            it "has words that it has" do
                expect(completer.has_word?("dogma")).to be true
            end

            it "doesn't have words that it doesn't have" do
                expect(completer.has_word?("guten")).to be false
            end

            it "doesn't have words that it partially has" do
                expect(completer.has_word?("do")).to be false
            end
        end

        context ".completions_for" do
            it "finds completions for partial words" do
                # note that I can add words again, but that those words don't impact the next test
                completer.add_words(["dogmatic"])
                words = completer.completions_for("do")
                expect(words).to include "dogmatic"
                expect(words).to include "dogma"
                expect(words).to include "dog"
                expect(words.length).to eql 3
            end

            it "finds completions for whole words" do
                words = completer.completions_for("dog")
                expect(words).to include "dogma"
                expect(words).to include "dog"
                expect(words.length).to eql 2
            end

            it "doesn't find completions for things it doesn't have" do
                words = completer.completions_for("z")
                expect(words).to eql []
            end
        end
    end

    context "edge cases" do
        it "can add no words" do
            expect{completer.add_words([])}.to_not raise_error
        end

        it "can add words more than once" do
            completer.add_words(["one"])
            expect{completer.add_words(["two"])}.to_not raise_error
        end

        it "returns all completions for an empty string" do
            completer.add_words(["one", "two"])
            expect(completer.completions_for("")).to include("one", "two")
        end
    end
end
