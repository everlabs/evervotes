defmodule EvervotesApi.Repo.Migrations.CreateVotingsTable do
  use Ecto.Migration

  def change do
    create table(:votings) do
      add :title, :string
      add :description, :string
      add  :multiple, :boolean

      timestamps()
    end
  end
end
