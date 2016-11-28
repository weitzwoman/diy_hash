class MyHash
  define_method(:initialize) do
    @key = []
    @value = []
  end

  define_method(:myStore) do |key, value|
    @key.push(key)
    @value.push(value)
  end

  define_method(:myFetch) do |key|
    i = @key.index(key)
    @value[i]
  end
end
