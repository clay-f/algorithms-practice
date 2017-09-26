def palindrome?(s)
 s.downcase == s.reverse.downcase
end

p palindrome?("a b a")