class UserController < ApplicationController
	def perfil
		@user_perfil = User.find params[:id]
		@employer = Ideas.all
	end

	def user_ideas
		@user_ideas = Ideas.all
		@user = User.find(current_user)

		@coments = Coments.all
		@coment = 0

		@votation = Votation.all
		@like = 0
		@unlike = 0
	end

	def collaborate
		@user.collaborate = nil;
		@user.save

		redirect_to root_path
	end
end