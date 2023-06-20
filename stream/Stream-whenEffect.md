# whenEffect

Returns the stream if the given effectful condition is satisfied, otherwise
returns an empty stream.

To import and use `whenEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.whenEffect
```

**Signature**

```ts
export declare const whenEffect: {
  <R2, E2>(effect: Effect.Effect<R2, E2, boolean>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, effect: Effect.Effect<R2, E2, boolean>): Stream<R | R2, E | E2, A>
}
```
