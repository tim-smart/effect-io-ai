# fromPull

Creates a stream from an effect that pulls elements from another stream.

See `Stream.toPull` for reference.

To import and use `fromPull` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromPull
```

**Signature**

```ts
export declare const fromPull: <R, R2, E, A>(
  effect: Effect.Effect<Scope.Scope | R, never, Effect.Effect<R2, Option.Option<E>, Chunk.Chunk<A>>>
) => Stream<R2 | Exclude<R, Scope.Scope>, E, A>
```
