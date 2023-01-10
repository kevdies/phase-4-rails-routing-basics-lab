class StudentsController < ApplicationController
    def index
        # byebug
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        # english...order the whole Student class by grade in descending order, highest to lowest
        render json: students
        # byebug
    end

    def highest_grade
        # byebug
        student = Student.order(grade: :desc).first
        render json: student
    end
end
