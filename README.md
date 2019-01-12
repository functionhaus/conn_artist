# ConnArtist

ConnArtist is a simple helper library for common Plug patterns in order to reduce
duplication across any Plug-powered Elixir apps.

The library is starting small with just a few helpers that I've personally used,
but please feel free to submit pull requests for additional helpers and patterns
that you believe would be beneficial in such a library.

All of the functions in this library are currently located in the top-level
ConnArtist module but I could see this changing as it grows in scope and
requires more rigorous organization.

At the moment this library includes only Plug and Jason as dependencies. The
goal is to keep the dependency set as svelte as possible in order to retain the
broadest possible compatibility with various implementations of Plug across
applications in the Elixir community.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `conn_artist` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:conn_artist, "~> 0.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/conn_artist](https://hexdocs.pm/conn_artist).

## License

ConnArtist source code is released under Apache 2 License.
Check LICENSE file for more information.
