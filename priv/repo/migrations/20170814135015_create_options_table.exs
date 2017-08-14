defmodule EvervotesApi.Repo.Migrations.CreateOptionsTable do
  use Ecto.Migration

  def change do
    create table(:options) do
      add :title, :string
      add :voning_id, references(:votings)

      timestamps()
    end

  end
end
