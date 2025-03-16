Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"
  get("/login", { :controller => "sessions", :action => "new" })
  get("/signup", { :controller => "sessions", :action => "new" })
  get("/posts", { :controller => "places", :action => "index" })
  get("/logout", { :controller => "sessions", :action => "destroy" })
end