require_relative 'substrings'




describe 'Substrings' do

  it "handles an empty dictionary" do
    expect(substrings("foo",[])).to eq({})
  end

  it "searches a dictionary for a word which is included in the original string" do
    expect(substrings("foo", %w(foo bar baz))).to eq({"foo" => 1})
  end

  it "it searches a dictionary for any words included the original string" do
    @dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    expect(substrings("below", @dictionary)).to eq({"below"=>1, "low"=>1})
  end
end



# Implement a method #substrings that takes a word as the first argument and then an array of valid substrings (your dictionary) as the second argument. It should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.

#     > dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#     => ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#     > substrings("below", dictionary)
#     => {"below"=>1, "low"=>1}
# Next, make sure your method can handle multiple words:

#     > substrings("Howdy partner, sit down! How's it going?", dictionary)
#     => {"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1}
