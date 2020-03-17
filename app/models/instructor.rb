class Instructor

    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, testname)
        tezt = BoatingTest.all.select {|array| array.student == student && array.testname == testname}
        if tezt
            tezt.status = "passed"
        else
            BoatingTest.new(student, testname, "passed", self)
        end
    end

    def fail_student(student, testname)
        tezt = BoatingTest.all.select {|array| array.student == student && array.testname == testname}
        if tezt
            tezt.status = "failed"
        else BoatingTest.new(student, testname, "failed", self)
        end
    end
end
