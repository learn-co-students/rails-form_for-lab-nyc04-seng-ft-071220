class StudentsController < ApplicationController

    def new
        @student = Student.new
    end

    def show
        @student = Student.find(params[:id])
    end

    def create
        student = Student.create(student_params)
        # byebug
        redirect_to student_path(student)
    end

    def edit
        # byebug
        @student = Student.find(params[:id])
    end
    
    def update
        # byebug
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private
    def student_params 
        params[:student].permit(:first_name, :last_name)
    end
end