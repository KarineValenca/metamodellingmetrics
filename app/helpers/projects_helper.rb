include UsersHelper

module ProjectsHelper

	def create_project
		@project = Project.new(params[:ground])
		@project.user_id = 1
	end
	
end
