defmodule PhxSite.Posts do
  @moduledoc """
  The boundary for the Posts system.
  """

  import Ecto.Query
  alias PhxSite.Repo

  alias PhxSite.Posts.Post

  @doc """
  Returns the list of posts.

  ## Examples

      iex> list_posts()
      [%Post{}, ...]

  """
  def list_posts do
    Repo.all(from Post, order_by: [desc: :date, desc: :title] )

  end

  @doc """
  Gets a single post.

  Raises `Ecto.NoResultsError` if the Post does not exist.

  ## Examples

      iex> get_post!(123)
      %Post{}

      iex> get_post!(456)
      ** (Ecto.NoResultsError)

  """
  def get_post!(id), do: Repo.get!(Post, id)
  |> Repo.preload(:tags)


  @doc """
  Creates a post.

  ## Examples

      iex> create_post(%{field: value})
      {:ok, %Post{}}

      iex> create_post(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_post(attrs \\ %{}) do
    %Post{}
    |> Repo.preload(:tags)
    |> Post.changeset(attrs)
    |> Ecto.Changeset.put_assoc(:tags, parse_tags(attrs))
    |> Repo.insert()
  end

  @doc """
  Updates a post.

  ## Examples

      iex> update_post(post, %{field: new_value})
      {:ok, %Post{}}

      iex> update_post(post, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_post(%Post{} = post, attrs) do
    post
    |> Repo.preload(:tags)
    |> Post.changeset(attrs)
    |> Ecto.Changeset.put_assoc(:tags, parse_tags(attrs))
    |> Repo.update()

  end

  @doc """
  Deletes a Post.

  ## Examples

      iex> delete_post(post)
      {:ok, %Post{}}

      iex> delete_post(post)
      {:error, %Ecto.Changeset{}}

  """
  def delete_post(%Post{} = post) do
    post
    |> Repo.preload(:tags)
    Repo.delete(post)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking post changes.

  ## Examples

      iex> change_post(post)
      %Ecto.Changeset{source: %Post{}}

  """
  def change_post(%Post{} = post) do
    Post.changeset(post, %{})
  end


  defp parse_tags(params)  do
    unless params["tags"] == nil do
      id = params["tags"]
      Enum.map(id, &%{id: &1})
      Repo.all(from t in PhxSite.Tags.Tag, where: t.id in ^id)
    end
  end

end
