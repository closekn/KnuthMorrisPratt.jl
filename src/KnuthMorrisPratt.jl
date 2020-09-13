module KnuthMorrisPratt

  #=
    @fn     word search using KMP
    @param  [1] (text::String) run text to search
            [2] (word::String) search word
    @return (Int) position in text when word is found
  =#
  function KMP_search(text::String, word::String) :: Int
  end

  #=
    @fn     Generate partial match table for KMP
    @param  (word::String) search word
    @return (Int[]) partial match table
  =#
  function generate_KMP_table(word::String) :: Int[]
  end

end
