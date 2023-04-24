class DirectorController < ApplicationController
  def youngest_director
    render({ :template => "director_templates/youngestdirector.html.erb"})
  end

  def index
    @list_of_directors = Director.all
    render({:template => "director_templates/index.html.erb"})
  end

end
