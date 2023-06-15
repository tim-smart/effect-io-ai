# bounded

Creates a bounded hub with the back pressure strategy. The hub will retain
messages until they have been taken by all subscribers, applying back
pressure to publishers if the hub is at capacity.

For best performance use capacities that are powers of two.

Part of the `Hub` module from the `@effect/io` package. Also known as `Hub.bounded`.
