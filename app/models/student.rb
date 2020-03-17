class Student

    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(testname, teststatus, instructor)
        BoatingTest.new(self, testname, teststatus, instructor)
    end

    def self.find_student(firstname)
        self.all.find {|array| array.first_name == firstname}
    end

    def grade_percentage
        testtaken = BoatingTest.all.select{|array|array.student == self}
        testpassed = testtaken.select{|array| array.teststatus == "passed"}
        percetangepassed = (testpassed.length.to_f / testtaken.length.to_f) * 100
    end
end
