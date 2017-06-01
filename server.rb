require "sinatra"

get "/home" do
erb :index
end

get "/portfolio" do
 erb :gallery
end

get "/about_me" do
  @skills = ["git", "HTML", "CSS", "RUBY"]
  @interests = ["cars", "animals", "food"]
erb :me
end

get "/favourites" do
  @fav_links = ["https://github.com/emanuelsamel/cmr/blob/master/contact.rb", "https://github.com/emanuelsamel/cmr/blob/master/contact.rb"]
erb :favourites
end

get "/" do
  redirect to "/home"
end

get "/gallery" do
  redirect to"/favourites"
end
