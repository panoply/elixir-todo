defmodule TodosApp.TodoView do
  use TodosApp.Web, :view

  def completed(true) do
    "awesome"
  end

  def completed(false) do
    "bummer"
  end
end
