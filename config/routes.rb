Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors/", { :controller => "director", :action => "index"})
  get("/directors/youngest", { :controller => "director", :action => "youngest_director"})
end
