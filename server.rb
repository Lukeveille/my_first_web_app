require "sinatra"

get "/" do
  redirect to("/home")
end

get "/home" do
  erb :index
end

get "/gallery" do
  redirect to("/portfolio")
end

get "/portfolio" do
  erb :gallery
end

get "/about_me" do
  @skills = ["git", "HTML", "CSS", "Ruby"]
  @interests = ["cats", "art", "music", "films", "coffee"]
  erb :about_me
end

get "/favourites" do
  @fav_links = ["http://www.reddit.com/", "http://www.reuters.com", "http://www.edx.org", "http://sheets.google.com/", "http://www.gomovies.cool/movie/filter"]
  erb :fav_links
end
