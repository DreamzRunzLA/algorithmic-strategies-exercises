# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    ans = ''

    i = 0
    while i < str.length do
        count = 0
        character = str[i]

        while character == str[i] do
            count += 1
            i += 1
        end

        if count == 1
            ans << character
        else
            ans << count.to_s + character
        end
    end
    return ans
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
