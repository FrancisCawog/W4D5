class Array
    def my_uniq
        uniq_ele = []

        self.each do |ele|
            uniq_ele << ele if !uniq_ele.include?(ele)
        end

        uniq_ele
    end

    def two_sum
        pairs = []
        self.each.with_index do |ele1, i|
            self.each.with_index do |ele2, j|
                if i < j && ele1 + ele2 == 0
                    pairs << [i, j]
                end
            end
        end
        return pairs
    end

    def my_transpose
        multidimensional = false
        self.each do |ele|
            if ele.is_a?(Array)
                multidimensional = true
            end
        end

        raise 'Input array must be 2D array' if multidimensional == false

        new_arr = []
        i = 0

        while i < self.length
            self.each do |subarray|
                new_arr << subarray[i]
            end
            i += 1
        end

        new_arr.each_slice(self.length).to_a
    end
end

p ([
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8]
]).my_transpose
 # => [[0, 3, 6],
 #     [1, 4, 7],
 #     [2, 5, 8]]