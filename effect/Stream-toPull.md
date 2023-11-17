# toPull

Returns in a scope a ZIO effect that can be used to repeatedly pull chunks
from the stream. The pull effect fails with None when the stream is
finished, or with Some error if it fails, otherwise it returns a chunk of
the stream's output.

To import and use `toPull` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.toPull
```

**Signature**

```ts
export declare const toPull: <R, E, A>(
  self: Stream<R, E, A>
) => Effect.Effect<Scope.Scope | R, never, Effect.Effect<R, Option.Option<E>, Chunk.Chunk<A>>>
```
