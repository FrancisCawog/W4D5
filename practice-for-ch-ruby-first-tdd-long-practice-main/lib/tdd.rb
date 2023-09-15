class Array
    def my_uniq
        uniq_ele = []

        self.each do |ele|
            uniq_ele << ele if !uniq_ele.include?(ele)
        end

        uniq_ele
    end
end

p [1, 2, 1, 3, 3].my_uniq