defmodule EvervotesApi.Voting do
  use EvervotesApi.Web, :model

  schema "votings" do
    field :title, :string
    field :description, :string
    field  :multiple, :boolean
    
    timestamps
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description, :multiple])
    |> validate_required([:title, :description, :multiple])
  end

end
