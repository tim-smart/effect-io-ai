# whenEffect

Returns the stream if the given effectful condition is satisfied, otherwise
returns an empty stream.

To import and use `whenEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.whenEffect
```

**Signature**

```ts
export declare const whenEffect: {
  <R2, E2>(effect: Effect.Effect<boolean, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2>(self: Stream<A, E, R>, effect: Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>
}
```
