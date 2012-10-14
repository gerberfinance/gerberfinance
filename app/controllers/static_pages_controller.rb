class StaticPagesController < ApplicationController

	def about
	end 
	
	def paramount
		render :layout => false  
	end
	
	def top10
		render :layout => false
	end	
	
	def calc
		render :layout => false
	end	
	
	def gear
		render :layout => false
	end	

end
