class SymptomsController < ApplicationController
    def index
      @symptoms = Symptom.all
    end

    def show
      @symptom = Symptom.find(params[:id])
    end

    def new
      @symptom = Symptom.new
    end

    def edit
      @symptom = Symptom.find(params[:id])
    end

    def create
      @symptom = Symptom.new(symptom_params)
   
      if @symptom.save
        redirect_to @symptom
      else
        render 'new'
      end
    end

    def update
      @symptom = Symptom.find(params[:id])
     
      if @symptom.update(symptom_params)
        redirect_to @symptom
      else
        render 'edit'
      end
    end

    def destroy
      @symptom = Symptom.find(params[:id])
      @symptom.destroy
   
      redirect_to symptoms_path
    end

    private
      def symptom_params
        params.require(:symptom).permit(:name, :description)
      end
end
