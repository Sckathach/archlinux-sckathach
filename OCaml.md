# OCaml installation on Linux 

## Opam

```shell
pacman -S opam 
opam init
eval $(opam env)
opam install dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release
```
### Zshrc/ Bashrc
```
# ~/.zshrc

# Opam configuration
[[ ! -r /home/sckathach/.opam/opam-init/init.zsh ]] || source /home/sckathach/.opam/opam-init/init.zsh  > /        dev/    null 2> /dev/null
```
# Dune 

## Install Dune 
Best way is to use opam:
```sh 
opam install dune 
```

Then, init the shell (or write this line in .bashrc/.zshrc):
```sh 
eval $(opam env)
```

## Initialisation 
```sh
dune init proj <proj_name>
```

## Build and test 
```sh
dune build 
dune exec <proj_name> 
```
### Run tests 
```sh
dune test
```

## With a single file 
Init the dune file (`dune`):
```
(executable
    (name <your_proj>))
```

Init the ml file:
```ocaml
<your_proj>.ml

print_endline "Hello, World !"
```

Build, or build and run:
```sh 
dune build <your_proj>.exe
dune exec -- ./<your_proj>.exe
```
