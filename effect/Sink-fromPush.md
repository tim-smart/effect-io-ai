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
export declare const fromPush: <In, L0, R0, L, R>(
  push: Effect.Effect<
    (_: Option.Option<Chunk.Chunk<In>>) => Effect.Effect<void, readonly [Either.Either<R0, L0>, Chunk.Chunk<L>], R>,
    never,
    R
  >
) => Sink<R0, In, L, L0, Exclude<R, Scope.Scope>>
```
