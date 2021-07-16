defmodule ErlangMaps do
  @moduledoc """
        filter/2
        filtermap/2
        find/2
        fold/3
        foreach/2
        from_keys/2
        from_list/1
        get/2
        get/3
        intersect/2
        intersect_with/3
        is_key/2
        iterator/1
        keys/1
        map/2
        merge/2
        merge_with/3
        new/0
        next/1
        put/3
        remove/2
        size/1
        take/2
        to_list/1
        update/3
        update_with/3
        update_with/4
        values/1
        with/2
        without/2
  """
  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.filter(fn k, _v -> k !="b" end)
    %{"a" => 1}
  """
  def filter(map, fun) do
    :maps.filter(fun, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.filtermap(fn k, _v -> k == "a" end)
    %{"a" => 1}
  """
  def filtermap(map, fun) do
    :maps.filtermap(fun, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.find("a")
    {:ok, 1}
  """
  def find(map, key) do
    :maps.find(key, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.fold([], fn k, _v, acc -> [k | acc] end)
    ["b", "a"]
  """
  def fold(map, init, fun) do
    :maps.fold(fun, init, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.reduce([], fn k, _v, acc -> [k | acc] end)
    ["b", "a"]
  """
  def reduce(map, init, fun) do
    :maps.fold(fun, init, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.foreach(fn _k, _v -> nil end)
    :ok
  """
  def foreach(map, fun) do
    :maps.foreach(fun, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2} |> ErlangMaps.foreach(fn _k, _v -> nil end)
    :ok
  """
  def from_keys(keys, value) do
    :maps.from_keys(keys, value)
  end

  @doc """
    ## Exmaple
    iex> [{"a", 1}, {"b", 2}] |> ErlangMaps.from_list()
    %{"a" => 1, "b" => 2}
  """
  def from_list(list) do
    :maps.from_list(list)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1}|> ErlangMaps.intersect( %{"a" => 1, "b" => 2})
    %{"a" => 1}
  """
  def intersect(map1, map2) do
    :maps.intersect(map1, map2)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1}|> ErlangMaps.intersect_with( %{"a" => 1, "b" => 2}, fn _k, v1, v2 -> v1 + v2 end)
    %{"a" => 2}
  """
  def intersect_with(map1, map2, fun) do
    :maps.intersect_with(fun, map1, map2)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1}|> ErlangMaps.is_key("a")
    true
  """
  def is_key(map, key) do
    :maps.is_key(key, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.iterator()
    [0 | %{"a" => 1, "b" => 2}]
  """
  def iterator(map) do
    :maps.iterator(map)
  end

  @doc ~S"""
    ## Exmaple
    iex> %{"a" => 1}|> ErlangMaps.map(fn k, v -> "#{k} #{v}" end)
    %{"a" => "a 1"}
  """
  def map(map, fun) do
    :maps.map(fun, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1}|> ErlangMaps.merge_with( %{"a" => 1, "b" => 2}, fn _k, v1, v2 -> v1 + v2 end)
    %{"a" => 2, "b" => 2}
  """
  def merge_with(map1, map2, fun) do
    :maps.merge_with(fun, map1, map2)
  end

  @doc """
    ## Exmaple
    iex> i = %{"a" => 1, "b" => 2}|> ErlangMaps.iterator()
    iex> {"a", 1, i} = ErlangMaps.next(i)
    iex> ErlangMaps.next(i)
    {"b", 2, :none}
  """
  def next(map) do
    :maps.next(map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.remove("a")
    %{"b" => 2}
  """
  def remove(map, key) do
    :maps.remove(key, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.size()
    2
  """
  def size(map) do
    :maps.size(map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.update_with("a", fn v -> v * 2 end)
    %{"a" => 2, "b" => 2}
  """
  def update_with(map, key, fun) do
    :maps.update_with(key, fun, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.update_with("c", 3, fn _ -> nil end)
    %{"a" => 1, "b" => 2, "c" => 3}
  """
  def update_with(map, key, init, fun) do
    :maps.update_with(key, fun, init, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.with(["a"])
    %{"a" => 1}
  """
  def with(map, keys) do
    :maps.with(keys, map)
  end

  @doc """
    ## Exmaple
    iex> %{"a" => 1, "b" => 2}|> ErlangMaps.without(["a"])
    %{"b" => 2}
  """
  def without(map, keys) do
    :maps.without(keys, map)
  end
end
