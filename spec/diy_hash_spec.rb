require('rspec')
require('diy_hash')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "funny")
      expect(test_hash.myFetch("dog")).to(eq("funny"))
    end
  end

  describe("#has_key?") do
    it("returns true if hash has a key") do
      test_hash = MyHash.new()
      test_hash.myStore("dog", "funny")
      expect(test_hash.has_key?("dog")).to(eq(true))
    end
  end

  describe("#has_value?") do
    it("returns true if hash has a value") do
      test_hash = MyHash.new()
      test_hash.myStore("dog", "funny")
      expect(test_hash.has_value?("funny")).to(eq(true))
    end
  end

  describe("#length") do
    it("returns fixNum of number of key-value pairs in hash") do
      test_hash = MyHash.new()
      test_hash.myStore("octopus", "handsy")
      expect(test_hash.length()).to(eq(1))
    end
  end

end
