defmodule ActivityRecorder.Repo.Migrations.CreateActivity do
  use Ecto.Migration

  def change do
    create table(:activities) do
      add :title, :string
      add :log_entry, :text

      timestamps
    end

  end
end
