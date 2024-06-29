# cross

Composes this stream with the specified stream to create a cartesian
product of elements. The `that` stream would be run multiple times, for
every element in the `this` stream.

See also `Stream.zip` for the more common point-wise variant.

To import and use `cross` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.cross
```

**Signature**

```ts
export declare const cross: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<[A, A2], E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<[A, A2], E | E2, R | R2>
}
```
