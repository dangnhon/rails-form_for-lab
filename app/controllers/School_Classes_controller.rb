class SchoolClassesController < ApplicationController

    def index 
        @school_classes = SchoolClass.all 
    end 

    def show 
        @school_class = SchoolClass.find(params[:id])
    end 
    
    def new 
        @school_class = SchoolClass.new
    end 

    def create 
        @school_class = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        redirect_to @school_class
    end 

    def edit 
        @school_class = SchoolClass.find(params[:id])
    end 

    def update 
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
        # Code below gives me a type error:  "no implicit conversion of Symbol into String" What does this mean??
        #@school_class.update(require(:school_class).permit(:title, :room_number))
        redirect_to @school_class
    end 
end 