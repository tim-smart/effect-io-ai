# crossLeft

Composes this stream with the specified stream to create a cartesian
product of elements, but keeps only elements from this stream. The `that`
stream would be run multiple times, for every element in the `this` stream.

See also `Stream.zipLeft` for the more common point-wise variant.

To import and use `crossLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.crossLeft
```

**Signature**

```ts
export declare const crossLeft: {
  <R2, E2, A2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <R, E, A, R2, E2, A2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A, E | E2, R | R2>
}
```
