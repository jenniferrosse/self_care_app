class MusclesController < ApplicationController
	before_action :authenticate_user!
	before_action :authenticate_admin!, except: [:index, :show, :search]

	def search
    if params[:search].present?
        @muscles = Muscle.search(params[:search])
    else
        @muscles = Muscle.all.order('muscle_number')
    end
  end

	def index
		@muscles = Muscle.all.order("muscle_number")
	end

	def import
    Muscle.import(params[:file])
    redirect_to root_url, notice: "Muscles imported."
  end

	def show
		@muscle = Muscle.find(params[:id])
	end

	def new
		@muscle = Muscle.new
	end

	def edit
		@muscle = Muscle.find(params[:id])
	end

	def create
		@muscle = Muscle.new(muscle_params)
 
  	if @muscle.save
 	  	redirect_to @muscle
  	else
    	render 'new'
		end
	end

	def update
	  @muscle = Muscle.find(params[:id])
	 
	  if @muscle.update(muscle_params)
	    redirect_to @muscle
	  else
	    render 'edit'
	  end
	end

	def destroy
		@muscle = Muscle.find(params[:id])
  	@muscle.destroy
 
  	redirect_to muscles_path
	end

	private
		def muscle_params
			params.require(:muscle).permit(:name, :muscle_number, :symptoms, :common_diagnoses, :activation, :lifestyle_considerations, :test, :self_care_treatment, :related_muscles, :quick_reference, :youtube_url)
		end
end
