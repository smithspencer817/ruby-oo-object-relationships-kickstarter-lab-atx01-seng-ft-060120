class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects = ProjectBacker.all.select do |proj|
            proj.project == self
        end
        projects.map do |proj|
            proj.backer
        end
    end
end