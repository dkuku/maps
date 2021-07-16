defmodule Maps do
  @moduledoc"""
  Documentation for `Maps`.
  """

  defdelegate delete(map, key), to: Map
  defdelegate drop(map, key), to: Map
  defdelegate equal?(map, key), to: Map
  defdelegate fetch(map, key), to: Map
  defdelegate fetch!(map, key), to: Map
  defdelegate from_struct(map), to: Map
  defdelegate get(map, key, default), to: Map
  defdelegate get(map, key), to: Map
  defdelegate get_and_update(map, key, f), to: Map
  defdelegate get_and_update!(map, key, f), to: Map
  defdelegate get_lazy(map, key, d), to: Map
  defdelegate has_key?(map, key), to: Map
  defdelegate keys(map), to: Map
  defdelegate merge(map, key), to: Map
  defdelegate merge(map, key, f), to: Map
  defdelegate new, to: Map
  defdelegate new(map), to: Map
  defdelegate new(map, key), to: Map
  defdelegate pop(map, key, d), to: Map
  defdelegate pop!(map, key), to: Map
  defdelegate pop_lazy(map, key, d), to: Map
  defdelegate put(map, key, val), to: Map
  defdelegate put_new(map, key, val), to: Map
  defdelegate put_new_lazy(map, key, val), to: Map
  defdelegate replace(map, key, f), to: Map
  defdelegate replace!(map, key, f), to: Map
  defdelegate split(map, key), to: Map
  defdelegate take(map, list), to: Map
  defdelegate to_list(map), to: Map
  defdelegate update(map, key, d, f), to: Map
  defdelegate update!(map, key, f), to: Map
  defdelegate values(map), to: Map

  defdelegate filter(map, key), to: ErlangMaps
  defdelegate filtermap(map, key), to: ErlangMaps
  defdelegate find(map, key), to: ErlangMaps
  defdelegate fold(map, key, f), to: ErlangMaps
  defdelegate foreach(map, key), to: ErlangMaps
  defdelegate from_keys(map, key), to: ErlangMaps
  defdelegate from_list(map), to: ErlangMaps
  defdelegate intersect(map, key), to: ErlangMaps
  defdelegate intersect_with(map, key, f), to: ErlangMaps
  defdelegate is_key(map, key), to: ErlangMaps
  defdelegate iterator(map), to: ErlangMaps
  defdelegate map(map, key), to: ErlangMaps
  defdelegate merge_with(map, key, f), to: ErlangMaps
  defdelegate next(map), to: ErlangMaps
  defdelegate remove(map, key), to: ErlangMaps
  defdelegate size(map), to: ErlangMaps
  defdelegate update_with(map, key, f), to: ErlangMaps
  defdelegate update_with(map, key, d, f), to: ErlangMaps
  defdelegate with(map, key), to: ErlangMaps
  defdelegate without(map, key), to: ErlangMaps
end
