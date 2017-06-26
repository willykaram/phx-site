defmodule PhxSite.Repo.Migrations.AddPostsFields do
  use Ecto.Migration

  def change do
    alter table(:posts_posts) do
      add :teaser, :text
      add :date, :date
    end
  end
end
