require 'pry'
class Backer 
    attr_reader :name 
    attr_accessor :projects
    def initialize(name)
        @name = name 
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        projectbacker = ProjectBacker.all.select do |projectbacker|
            projectbacker.backer == self
        end 
        projectbacker.map do |projectbacker|
            projectbacker.project 
        end 
    end 
   

end 