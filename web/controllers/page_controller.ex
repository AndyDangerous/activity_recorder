defmodule ActivityRecorder.PageController do
  use ActivityRecorder.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
