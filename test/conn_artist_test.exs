defmodule ConnArtistTest do
  use ExUnit.Case, async: true
  use Plug.Test

  doctest ConnArtist

  test "ConnArtist.halt_json" do
    conn = conn(:get, "/")
    |> ConnArtist.halt_json(:forbidden, %{some: "response"})

    %Plug.Conn{halted: halted, status: status, resp_body: resp_body} = conn

    # halts the connection
    assert halted

    # sets status to :forbidden (403 error)
    assert status == 403

    # assigns the json-encoded response body
    assert resp_body == "{\"some\":\"response\"}"
  end

end
