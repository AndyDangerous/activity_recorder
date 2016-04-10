defmodule ActivityRecorder.Activity do
  use ActivityRecorder.Web, :model

  schema "activities" do
    field :title, :string
    field :log_entry, :string

    timestamps
  end

  @required_fields ~w(title log_entry)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
