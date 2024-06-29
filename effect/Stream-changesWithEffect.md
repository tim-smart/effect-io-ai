# changesWithEffect

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using the specified effectual function to
determine whether two elements are equal.

To import and use `changesWithEffect` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.changesWithEffect
```

**Signature**

```ts
export declare const changesWithEffect: {
  <A, E2, R2>(
    f: (x: A, y: A) => Effect.Effect<boolean, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, E2, R2>(self: Stream<A, E, R>, f: (x: A, y: A) => Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>
}
```
