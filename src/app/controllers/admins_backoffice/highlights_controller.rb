class AdminsBackoffice::HighlightsController < AdminsBackofficeController
  def index
    @students_highlights = Student.all
  end
end
