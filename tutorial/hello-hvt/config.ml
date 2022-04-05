open Mirage

let main =
  foreign
    ~packages:[package "duration"]
    "Unikernel.Hello" (time @-> job)

let () =
  register "helloo" [main $ default_time]
