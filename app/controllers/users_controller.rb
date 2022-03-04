class UsersController < ApplicationController
	def create
    @page = Page.find(params[:page_id])
    @comment = @page.comments.create(user_params)
    redirect_to page_path(@page)
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :phonenumber)
    end
end
