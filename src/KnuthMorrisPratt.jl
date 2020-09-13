module KnuthMorrisPratt

  #=
    @fn     word search using KMP
    @param  [1] (text::String) run text to search
            [2] (word::String) search word
    @return (Int64) position in text when word is found
  =#
  function KMP_search(text::String, word::String) :: Int
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
