module Enumerable
    def my_each
        if block_given?
            for i in 0...self.length do
                yield(self[i])
            end
        end
        self
    end

    def my_each_with_index
        if block_given?
            for i in 0...self.length do
                yield(self[i],i)
                
            end
        end
        self
    end

    def my_select
        if block_given?
            r=[]
            self.my_each do |x|
                if yield(x)
                    r << x
                end
            end
            r
        end
    end

    def my_all?
        if block_given?
            self.my_each do |x|
                return false if !yield(x)
            end
            return true
        end
        true
    end
    def my_any?
        if block_given?
            my_each do |x|
                return true if yield(x)
            end
            false
        end
    end

    
end

