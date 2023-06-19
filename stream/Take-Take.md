# Take

A `Take<E, A>` represents a single `take` from a queue modeling a stream of
values. A `Take` may be a failure cause `Cause<E>`, a chunk value `Chunk<A>`,
or an end-of-stream marker.

Part of the `Take` module, imported from `@effect/stream/Take`.
