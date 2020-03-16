class Instructor < User
attr_reader :name

    @@all = []

    def self.all
        @@all
    end

    def find_test(student, test_name)
        BoatingTest.all.detect(ifnone = nil) do |test|
            (test.student == student && test.test_name == test_name)
        end
    end

    def status_update(student, test_name, test_status)
        test = find_test(student, test_name)
        if test 
            test.test_status = test_status
            test
        else
            student.add_boating_test(test_name, test_status, self)
        end
    end

    def pass_student(student, test_name)
        status_update(student, test_name, "Passed")
    end

    def fail_student(student, test_name)
        status_update(student, test_name, "Failed")
    end
end
