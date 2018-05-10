class PostsController < Sinatra::Base

  $posts = [{

      email: "User1@spartaglobal.com",
      first_name: "User1",
      last_name: "spartan",
      age: 20,
      title: "User 1",
      body: "This is the first post",
    },
    {

        email: "User2@spartaglobal.com",
        first_name: "User2",
        last_name: "spartan",
        age: 30,
        title: "User 2",
        body: "This is the second post",
      },
      {

          email: "User3@spartaglobal.com",
          first_name: "User3",
          last_name: "spartan",
          age: 40,
          title: "User 3",
          body: "This is the third post",
        },
        {

            email: "User4@spartaglobal.com",
            first_name: "User4",
            last_name: "spartan",
            age: 50,
            title: "User 4",
            body: "This is the fourth post",
          }]

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }


  configure :development do
    register Sinatra::Reloader
  end

  #Index page
  get "/" do
    @title = "Users"
    @posts = $posts
    erb :"posts/index"
  end

  #NEW
  get "/new" do
    "Show: This is the new form"
    erb :"posts/new"
  end

  #Edit
  get "/:id/edit" do
    "THIS IS THE EDIT PAGE"
  erb :"posts/edit"
  end

  #CREATE
  post "/" do
    "Show: This is the create page"
  end

  #UPDATE
  put "/:id" do
    "This is the update page"
  end
  #DELETE
  delete "/:id"do
  "Destroy"
  end
  #SHOW page
  get "/:id" do
    id = params[:id].to_i
    @posts= $posts[id]
    erb :"posts/show"
  end

end
