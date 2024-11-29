# fromPull

Creates a stream from an effect that pulls elements from another stream.

See `Stream.toPull` for reference.

To import and use `fromPull` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromPull
undefined

**Signature**

```ts
export declare const fromPull: <R, R2, E, A>(
  effect: Effect.Effect<Effect.Effect<Chunk.Chunk<A>, Option.Option<E>, R2>, never, Scope.Scope | R>
) => Stream<A, E, R2 | Exclude<R, Scope.Scope>>
```
