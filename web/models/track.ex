defmodule ActivityRecorder.Track do
  use ActivityRecorder.Web, :model

  schema "tracks" do
    field :name,           :string
    field :geom,           Geo.LineString
  end

  @required_fields ~w(name)
  @optional_fields ~w(geom)

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
