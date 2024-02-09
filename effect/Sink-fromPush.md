# fromPush

Creates a sink from a chunk processing function.

To import and use `fromPush` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fromPush
```

**Signature**

```ts
export declare const fromPush: <In, E, A, L, R>(
  push: Effect.Effect<
    (_: Option.Option<Chunk.Chunk<In>>) => Effect.Effect<void, readonly [Either.Either<E, A>, Chunk.Chunk<L>], R>,
    never,
    R
  >
) => Sink<A, In, L, E, Exclude<R, Scope.Scope>>
```
