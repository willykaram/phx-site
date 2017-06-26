defmodule PhxSite.Repo.Migrations.AddPostsOldURL do
  use Ecto.Migration

  def change do
    alter table(:posts_posts) do
      add :old_url, :string
    end
  end
end
