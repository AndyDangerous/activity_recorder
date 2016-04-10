defmodule ActivityRecorder.ActivityTest do
  use ActivityRecorder.ModelCase

  alias ActivityRecorder.Activity

  @valid_attrs %{log_entry: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Activity.changeset(%Activity{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Activity.changeset(%Activity{}, @invalid_attrs)
    refute changeset.valid?
  end
end
