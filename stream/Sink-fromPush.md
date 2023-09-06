# fromPush

Creates a sink from a chunk processing function.

To import and use `fromPush` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.fromPush
```

**Signature**

```ts
export declare const fromPush: <R, E, In, L, Z>(
  push: Effect.Effect<
    R,
    never,
    (_: Option.Option<Chunk.Chunk<In>>) => Effect.Effect<R, readonly [Either.Either<E, Z>, Chunk.Chunk<L>], void>
  >
) => Sink<Exclude<R, Scope.Scope>, E, In, L, Z>
```
