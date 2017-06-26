defmodule PhxSite.Repo.Migrations.AddIndexTagsTag do
  use Ecto.Migration

  def change do
    create unique_index(:tags_tags, [:name])
  end

end
