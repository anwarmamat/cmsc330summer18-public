# Project 0: Setup

This project is simply to get your system ready. It will not be submitted for
a grade.

## Introduction

In this course, among other things, you will learn three different programming
languages: Ruby, OCaml, and Rust. To complete the projects you have to
install the appropriate software to develop programs in these languages.
We recommend installing these packages on your local machine, but Grace is
available as an alternative.

Here are the packages that you are required to install.

* [Ruby](https://www.ruby-lang.org)
  - [minitest](https://rubygems.org/gems/minitest)
  - [sqlite3](https://rubygems.org/gems/sqlite3)
  - [sinatra](https://rubygems.org/gems/sinatra)
* [OCaml](http://ocaml.org)
  - [OPAM](https://opam.ocaml.org)
  - [OUnit](https://opam.ocaml.org/packages/ounit)
  - [ocamlfind](https://opam.ocaml.org/packages/ocamlfind)
* [Rust](https://www.rust-lang.org)
* [SQLite3](https://sqlite.org)

We highly recommend, but do not require, installing the following
packages.

* [Graphviz](http://graphviz.org)
* [utop](https://opam.ocaml.org/packages/utop)

The next sections will help guide you through installing these
on different operating systems. Read the section relevant to you. Some
of these steps may take a long time, be patient. To verify you have
completed all the steps correctly, run `ruby public.rb` in this directory.
You should not get any errors.

Computers are like people, each unique in its own way. These instructions
may require slight (or large) modifications depending on your setup.
Search engines are your friend if something goes wrong. If you are unable
to install **anything**, please come to office hours **as soon as possible**. 

## macOS

First, we will install the Homebrew package manager.

* `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

Once this has finished, we can install some of the software through Homebrew.

* `brew install ocaml opam rust graphviz`

Macs already come with Ruby and the Ruby Gems package manager. We only need
to install the required gems.

* `sudo gem install sqlite3 sinatra`

The OCaml package manager needs some initial configuration.

* `opam init`
* When prompted to modify `~/.bash_profile` (or another file) type "y".
* `source ~/.bash_profile` (or the file mentioned above).

Next, we will install the required OCaml packages through OPAM.

* `opam install ocamlfind ounit utop`

## Windows 10

Enable the [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
and install Ubuntu. Then follow the instructions in the Linux
section below.

## Linux

These instructions will assume you have a Debian-based system. This includes
distributions like Ubuntu. If you have a different distribution, use the
native package manager.

We will first add the OCaml package archive.

* `sudo add-apt-repository ppa:avsm/ppa`
* `sudo apt-get update`

Next we will install all the packages we need.

* `sudo apt-get install ruby-dev sqlite3 libsqlite3-dev ocaml ocaml-native-compilers camlp4 opam rust make m4 curl graphviz`

Next, we will install some gems.

* `sudo gem install sqlite3 sinatra`

The OCaml package manager needs some initial configuration.

* `opam init`
* If it hangs at "Fetching repository information," hit Ctrl-C and try `opam init` again (pressing y when prompted). This may take awhile, be patient.
* When prompted to modify `~/.bash_profile` (or another file) type "y".
* `source ~/.bash_profile` (or the file mentioned above).

Next, we will install the required OCaml packages through OPAM.

* `opam install ocamlfind ounit utop`

Finally, we'll install Rust.

* `curl https://sh.rustup.rs -sSf | sh`

## Grace

Most everything is installed on Grace, but there are still some
language-specific packages that must be installed. First, we
configure some things.

* Open `~/.cshrc.mine` in your text editor (probably emacs).
* If you have a line that says `limit maxproc 20`, delete it.
* Add the line `module load ruby` to the file.
* Add `module load ocaml`.
* Add `module load rust`.
* Add `eval \`opam config env\`` (these are **backticks** located to the left of the 1 key, not single quotes).
* Close the file and run `source ~/.cshrc.mine`.

Next, we'll install the gems.

* `gem install sqlite3 sinatra --install-dir ~/.gem`

Now, we configure the OCaml package manager and install some
libraries.

* `opam init`
* When prompted to modify `~/.cshrc` type "n".
* `opam install ocamlfind ounit utop`
