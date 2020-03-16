class Student < User
attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(name)
        self.all.detect {|student| student.name == name}
    end

    def find_student_tests
        BoatingTest.all.select {|test| test.student == self}
    end
    
    def grade_percentage
        test_status_array = find_student_tests.map {|test| test.test_status}
        num_tests = test_status_array.count.to_f
        passed = test_status_array.count {|status| status == "Passed"}
        (passed.to_f / num_tests * 100.00).round(2)
    end 
end
