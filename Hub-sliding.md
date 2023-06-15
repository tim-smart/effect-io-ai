# sliding

Creates a bounded hub with the sliding strategy. The hub will add new
messages and drop old messages if the hub is at capacity.

For best performance use capacities that are powers of two.

Part of the `Hub` module from the `@effect/io` package. Also known as `Hub.sliding`.
