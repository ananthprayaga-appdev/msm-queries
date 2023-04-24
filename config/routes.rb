Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "director", :action => "index"})
  get("/directors/youngest", { :controller => "director", :action => "youngest_director"})
  get("/directors/eldest", { :controller => "director", :action => "eldest_director"})
  get("/directors/:id", { :controller => "director", :action => "director_details"})
end
