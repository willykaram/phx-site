defmodule PhxSite.Web.PostController do
  use PhxSite.Web, :controller

  alias PhxSite.Posts
  alias PhxSite.Posts.Post
  alias PhxSite.Tags.Tag
  alias PhxSite.Repo


  def index(conn, _params) do
    posts = Posts.list_posts()
    |> Repo.preload(:tags)
    render(conn, "index.html", posts: posts)
  end

  def new(conn, _params) do
    #changeset = Posts.change_post(%PhxSite.Posts.Post{tags: [%PhxSite.Tags.Tag{}]})
    changeset = Posts.change_post(%Post{tags: []})
    #|> Repo.preload(:tags)
    #|> Repo.preload(:tags, [tags: %PhxSite.Tags.Tag{name: ""}])
    tags_all = Repo.all(Tag)
    #tags = Repo.all(from t in PhxSite.Tags.Tag, select t.id t.name)
    render(conn, "new.html", changeset: changeset, tags_all: tags_all)
  end

  def create(conn, %{"post" => post_params}) do
    case Posts.create_post(post_params) do
      #IO.inspect conn
      {:ok, post} ->
        conn
        |> put_flash(:info, "Post created successfully.")
        |> redirect(to: post_path(conn, :show, post))
      {:error, %Ecto.Changeset{} = changeset} ->
        tags_all = Repo.all(Tag)
        render(conn, "new.html", changeset: changeset, tags_all: tags_all)
    end
  end

  def show(conn, %{"id" => id}) do
    post = Posts.get_post!(id)
    |> Repo.preload(:tags)
    render(conn, "show.html", post: post)
  end

  def edit(conn, %{"id" => id}) do
    post = Posts.get_post!(id)
    |> Repo.preload(:tags)
    changeset = Posts.change_post(post)
    tags_all = Repo.all(Tag)
    render(conn, "edit.html", post: post, changeset: changeset, tags_all: tags_all)
  end

  def update(conn, %{"id" => id, "post" => post_params}) do
    post = Posts.get_post!(id)

    case Posts.update_post(post, post_params) do
      {:ok, post} ->
        conn
        |> put_flash(:info, "Post updated successfully.")
        |> redirect(to: post_path(conn, :show, post))
      {:error, %Ecto.Changeset{} = changeset} ->

        render(conn, "index.html", post: post, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    post = Posts.get_post!(id)
    |> Repo.preload(:tags)
    {:ok, _post} = Posts.delete_post(post)

    conn
    |> put_flash(:info, "Post deleted successfully.")
    |> redirect(to: post_path(conn, :index))
  end
end
