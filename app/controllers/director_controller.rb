class DirectorController < ApplicationController

  def youngest_director
    @youngest_director = Director.where.not({:dob => nil}).order({:dob => :desc}).at(0)
    render({ :template => "director_templates/youngestdirector.html.erb"})
  end

  def eldest_director
    @eldest_director = Director.where.not({:dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => "director_templates/eldestdirector.html.erb"})
  end

  def index
    @list_of_directors = Director.all
    render({:template => "director_templates/index.html.erb"})
  end

  def director_details
    @director_id = params.fetch("id")
    @director = Director.where({:id => @director_id}).at(0)
    render({:template => "director_templates/directordetails.html.erb"})
  end

end
