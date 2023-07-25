# filterEffect

Effectfully filters the elements emitted by this stream.

To import and use `filterEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.filterEffect
```

**Signature**

```ts
export declare const filterEffect: {
  <A, X extends A, R2, E2>(f: (a: X) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A>
  <R, E, A, X extends A, R2, E2>(self: Stream<R, E, A>, f: (a: X) => Effect.Effect<R2, E2, boolean>): Stream<
    R | R2,
    E | E2,
    A
  >
}
```
