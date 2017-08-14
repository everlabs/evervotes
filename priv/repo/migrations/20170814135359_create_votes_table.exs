defmodule EvervotesApi.Repo.Migrations.CreateVotesTable do
  use Ecto.Migration

  def change do
    create table(:votes) do
      add :option_id, references(:options)

      timestamps()
    end
  end
end
