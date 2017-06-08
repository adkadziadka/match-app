class MatchesController < ApplicationController

  def index
    students = Student.select(:name).map(&:name)
    @teams = RoundRobinTournament.schedule(students)
  end
end
