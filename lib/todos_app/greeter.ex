defmodule TodosApp.Greeter do
   def hello(name) do
      "Hello #{name}"
   end

   def hello(first_name, last_name) do
      "Hello #{first_name} #{last_name}"
   end

   def hello(%{first_name: first_name, last_name: last_name}) do
      hello(first_name, last_name)
   end

   def hello() do
      "You need to supply a name!"
   end

   def get(id) when is_binary(id) do
      id
      |> String.to_integer()
      |> get()
   end

   def get(id) when is_integer(id) do
      Repo.get(Todo, id)
   end
end

# TodosApp.Greeter.hello("Nicos") # "Hello Nicos"
# TodosApp.Greeter.hello("Nicos", "Savv") # "Hello Nicos Savv"
# TodosApp.Greeter.hello(%{first_name: "Nicos", last_name: "Savv"}) # "Hello Nicos Savv"
# TodosApp.Greeter.hello() # "You need to supply a name!"
#
# <?php
#
# class TodosApp::Greeter {
#    public function hello($name = nil) {
#       if($name) {
#          "Hello {$name}"
#       } ife
#       } else {
#          "You need to supply a name!"
#       }
#    }
# }
