class AdminsBackoffice::StudentsController < AdminsBackofficeController
  before_action :set_student, only: %i[ show edit update destroy ]

  def index
    @students = Student.all.page(params[:page])
  end  

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students or /students.json
  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to admins_backoffice_students_path, notice: 'Aluno cadastrado com sucessso!'
    else
      render :new
    end
  end

  # PATCH/PUT /students/1 or /students/1.json
  def update
    student_params

    if @student.update(student_params)
      redirect_to admins_backoffice_students_path, notice: 'Aluno atualizado com sucessso!'
    else
      render :edit
    end
  end

  # DELETE /students/1 or /students/1.json
  def destroy
    if @student.destroy
      redirect_to admins_backoffice_students_path, notice: 'Aluno excluído com sucesso!'
    else
      render :index
    end
  end

  private

  def student_params
    params.require(:student).permit(:student_name, :school_name, :teacher_name)
  end

  def set_student
    @student = Student.find(params[:id])
  end
end
