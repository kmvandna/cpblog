class Api::V1::PagesController < Api::V1::BaseController
	def index
	  data = 
	    Page.all.map do |page|
	    {
	      	title: page.title,
	      	body: page.body

    	 }
    	end
       render json: data, status: 201
    end
end