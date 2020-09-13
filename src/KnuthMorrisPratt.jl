module KnuthMorrisPratt
  export KMP_search

  #=
    @fn     word search using KMP
    @param  [1] (text::String) run text to search
            [2] (word::String) search word
    @return (Int64) Found     -> position of word in text
                    Not Found -> length(text) + 1
  =#
  function KMP_search(text::String, word::String) :: Int64
    table = generate_KMP_table(word)
    p = 0
    i = 1
    # search
    while p+i <= length(text)
      if word[i] == text[p+i]
        i += 1
        if i == length(word)+1
          return p+1
        end
      else
        p += i - table[i]
        if i > 1
          i = table[i]
        end
      end
    end
    # not found
    return length(text)+1
  end

  #=
    @fn     Generate partial match table for KMP
    @param  (word::String) search word
    @return (Array{Int64, 1}) partial match table
  =#
  function generate_KMP_table(word::String) :: Array{Int64, 1}
    table = ones(Int64, length(word))
    table[1] = 0
    i = 3
    j = 1
    while i <= length(word)
      if word[i-1] == word[j]
        table[i] = j+1
        i += 1
        j += 1
      elseif j > 1
        j = table[j]
      else
        table[i] = 1
        i += 1
      end
    end
    return table
  end

end
