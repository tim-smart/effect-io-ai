# changesWithEffect

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using the specified effectual function to
determine whether two elements are equal.

To import and use `changesWithEffect` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.changesWithEffect
```

**Signature**

```ts
export declare const changesWithEffect: {
  <A, R2, E2>(f: (x: A, y: A) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, f: (x: A, y: A) => Effect.Effect<R2, E2, boolean>): Stream<R | R2, E | E2, A>
}
```
