# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".
def compress_str(str)
    ansArr = []
    strArr = str.split('')

    while strArr.length > 1 do
        counter = 1
        eleToAdd = ''
        (0...strArr.length - 1).each do |i|
            if strArr[i] == strArr[i+1]
                counter += 1
                eleToAdd = strArr[i]
                strArr.delete_at(i)
            else
                ansArr << strArr[i]
                strArr.delete_at(i)
            end
        end
        ansArr << counter.to_s
        ansArr << eleToAdd
    end
    ansArr.join('')
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
