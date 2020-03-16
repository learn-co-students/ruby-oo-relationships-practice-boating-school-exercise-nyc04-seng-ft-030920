class Instructor

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # helper method
    def find_test(student, test_name, status)
        corresponding_test = BoatingTest.all.find{|boating_test| boating_test.student == student && boating_test.test_name == test_name}
        corresponding_test ? corresponding_test.first.status = status : BoatingTest.new(student, test_name, status, self)
    end

    def pass_student(student, test_name)
        find_test(student, test_name, "passed")
    end

    def fail_student(student, test_name)
        find_test(student, test_name, "failed")
    end


end
