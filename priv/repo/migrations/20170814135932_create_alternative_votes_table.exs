defmodule EvervotesApi.Repo.Migrations.CreateAlternativeVotesTable do
  use Ecto.Migration

  def change do
    create table(:alternative_votes) do
      add :user, :integer
      add :content, :text
      add :voning_id, references(:votings)

      timestamps()
    end
  end
end
