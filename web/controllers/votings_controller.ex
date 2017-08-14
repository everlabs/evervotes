defmodule EvervotesApi.VotingsController do
  use EvervotesApi.Web, :controller

  alias EvervotesApi.Voting

  def index(conn, _params) do
    
    votings = Repo.all(Voting)

    render(conn, "index.json", votings: votings)
  end

end
