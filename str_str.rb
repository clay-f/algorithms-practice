def str_str(haystack, needle)
    if (haystack.match?(needle))
        haystack.index(needle)
    else
        -1
    end
end


puts str_str("hello world", "d")