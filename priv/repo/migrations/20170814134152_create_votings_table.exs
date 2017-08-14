defmodule EvervotesApi.Repo.Migrations.CreateVotingsTable do
  use Ecto.Migration

  def change do
    create table(:votings) do
      add :title, :string
      add :description, :text
      add  :multiple, :boolean
    end
  end
end
