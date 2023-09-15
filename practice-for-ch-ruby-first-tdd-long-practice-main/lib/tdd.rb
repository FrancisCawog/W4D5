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
end

p [1, 2, 1, 3, 3].my_uniq
p [-1, 0, 2, -2, 1].two_sum