class ActorController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({:template => "actor_templates/index.html.erb"})
  end

  def actor_details
    @actor_id = params.fetch("id")
    @actor = Actor.where({:id => @actor_id}).at(0)
    @actor_characters = Character.where({:actor_id => @actor_id}).all
    # @actor_movies = Movie.where({:id => @actor_characters.movie_id}).all
    render({:template => "actor_templates/actordetails.html.erb"})
  end
end
