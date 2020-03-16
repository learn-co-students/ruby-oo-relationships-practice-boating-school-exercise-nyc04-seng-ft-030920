class Student

    attr_accessor :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end

    def self.find_student(first_name)
        @@all.select{|student| student.first_name == first_name}
    end

    def grade_percentage
        all_tests = BoatingTest.all.select{|boating_test| boating_test.student == self}
        passed = all_tests.select{|test| test.status == "passed"}
        failed = all_tests.select{|test| test.status == "failed"}
        pending = all_tests.select{|test| test.status == "pending"}
        average = passed.length.to_f / ( passed.length.to_f + failed.length.to_f ) * 100
        pending.length == 0 ? "#{average} %" : "#{average} % with #{pending.length} test(s) pending."
    end
end
