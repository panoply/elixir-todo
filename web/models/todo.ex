defmodule TodosApp.Todo do
  use TodosApp.Web, :model

  schema "todos" do
    field :title, :string
    field :done, :boolean, default: false

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :done])
    |> validate_required([:title, :done])
  end
end
