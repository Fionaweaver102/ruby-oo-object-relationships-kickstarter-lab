class Project 
    attr_reader :title 

    def initialize(title)
        @title = title 
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers 
        projectbacker = 
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self 
        end 
        projectbacker.map do |projectbacker|
            projectbacker.backer 
        end 
    end 
    
end 