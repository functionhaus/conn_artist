defmodule ConnArtist do
  @moduledoc """
  A simple module providing common Plug connection transformations.
  """

  # Bring in Plug for plugging things.
  import Plug.Conn

  @doc """
  Converts a tupleized ip address to a string.

  ## Examples

      iex> ConnArtist.ip_to_str({10, 20, 30, 40})
      "10.20.30.40"

      iex> ConnArtist.ip_to_str({255, 255, 255, 0})
      "255.255.255.0"

  """
  def ip_to_str(ip_tuple) do
    ip_tuple
    |> Tuple.to_list
    |> Enum.join(".")
  end


  @doc """
  Pull the remote ip out of the conn and convert it to a string

  ## Examples

      iex> ConnArtist.remote_ip_str(%Plug.Conn{remote_ip: {1, 2, 3, 4}})
      "1.2.3.4"

      iex> ConnArtist.remote_ip_str(%Plug.Conn{remote_ip: {20, 40, 60, 80}})
      "20.40.60.80"

  """
  def remote_ip_str(conn) do
    conn.remote_ip
    |> __MODULE__.ip_to_str
  end

  @doc """
  Halts a connection and returns a status and json response.

  ## Examples

   # Jason.encode! %Plug.Conn{halted: true, status: 400}
      iex> IO.puts ConnArtist.halt_json(%Plug.Conn{}, 400, "not found")
      %Plug.Conn{}

  """
  def halt_json(conn, status, msg) do
    conn
    |> halt
    |> send_resp(status, Jason.encode!(msg))
  end
end
