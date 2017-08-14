defmodule EvervotesApi.VotingsView do
  use EvervotesApi.Web, :view

  def render("index.json", %{votings: votings}) do
   %{data: render_many(votings, EvervotesApi.VotingsView, "votings.json")}
  end

  def render("show.json", %{voting: voting}) do
    %{data: render_one(voting, EvervotesApi.VotingsView, "votings.json")}
  end

  def render("votings.json", %{voting: voting}) do
    %{
      id: voting.uuid,
      title: voting.title,
      description: voting.description,
      multiple: voting.multiple,
      inserted_at: voting.inserted_at,
      updated_at: voting.updated_at
    }
  end

end
