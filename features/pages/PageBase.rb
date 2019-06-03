class PageBase < SitePrism::Page


    def generateCPF
        digits = []
        9.times { digits << rand(9) }
        2.times { digits << verification_digit_for(digits) }

        digits.join
    end

    
    def verification_digit_for(known_digits)
        i = 1
        sums = known_digits.reverse.collect do |digit|
        i = i + 1
        digit * i
        end

        verification_digit = 11 - sums.inject(0) { |sum, item| sum + item } % 11
        verification_digit < 10 ? verification_digit : 0
    end

    def get_random_string(length=5)
        source=("a".."z").to_a + ("A".."Z").to_a 
        key=""
        length.times{ key += source[rand(source.size)].to_s }
        return key
    end

    def get_email(length=10)
        source=("a".."z").to_a + ("A".."Z").to_a 
        key=""
        key += get_random_string(length)+"@gmail.com".to_s
        return key
    end
end
  