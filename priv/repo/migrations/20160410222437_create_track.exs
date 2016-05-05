defmodule ActivityRecorder.Repo.Migrations.CreateTrack do
  use Ecto.Migration

  def up do
    create table(:track) do
      add :name,     :string
      add :geom,     :geometry
    end
  end

  def down do
    drop table(:track)
  end
end
