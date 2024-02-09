# as

Maps the success values of this stream to the specified constant value.

To import and use `as` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.as
```

**Signature**

```ts
export declare const as: {
  <B>(value: B): <A, E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <R, E, A, B>(self: Stream<A, E, R>, value: B): Stream<B, E, R>
}
```
