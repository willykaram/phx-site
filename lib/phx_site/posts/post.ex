defmodule PhxSite.Posts.Post do
  use Ecto.Schema
  import Ecto.Query
  alias PhxSite.Posts.Post
  alias PhxSite.Tags.Tag
  alias PhxSite.Repo



  schema "posts_posts" do
    field :body, :string
    field :date, :date
    field :old_url, :string
    field :teaser, :string
    field :title, :string

    many_to_many :tags, Tag, join_through: "posts_tags", on_delete: :delete_all, on_replace: :delete

    timestamps()
  end

  # Changeset is the same
  def changeset(struct, params \\ %{}) do
    struct
    |> Ecto.Changeset.cast(params, [:body, :date, :old_url, :teaser, :title])
    #|> Ecto.Changeset.cast_assoc(:tags)

  end




end
