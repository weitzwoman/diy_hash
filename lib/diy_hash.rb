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

  define_method(:has_key?) do |key|
    @key.include?(key)
  end

  define_method(:has_value?) do |value|
    @value.include?(value)
  end

  define_method(:length) do
    @key.length()
  end

  define_method(:keys) do
    @key
  end

  define_method(:values) do
    @value
  end

  define_method(:merge) do |hash2|
    # for each key in hash2, push that key onto key of hash1 (self)
    # do the same thing for values
    #method that returns key array from hash2
    hash2Keys = hash2.keys()
    hash2Values = hash2.values()

    hash2Keys.each do |key|
      @key.push(key)
    end

    hash2Values.each do |value|
      @value.push(value)
    end

    @key + @value
  end

end
