defmodule PhxSite.Repo.Migrations.AddTimestampsPostsTags do
  use Ecto.Migration

  def change do

    alter table(:posts_tags) do

      timestamps()
    end
  end

end
