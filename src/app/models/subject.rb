class Subject < ApplicationRecord
  belongs_to :aluno
  paginates_per 10
end
