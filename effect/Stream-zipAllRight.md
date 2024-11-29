# zipAllRight

Zips this stream with another point-wise, and keeps only elements from the
other stream.

The provided default value will be used if this stream ends before the
other one.

To import and use `zipAllRight` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllRight
undefined

**Signature**

```ts
export declare const zipAllRight: {
  <A2, E2, R2>(
    that: Stream<A2, E2, R2>,
    defaultRight: A2
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, defaultRight: A2): Stream<A2, E | E2, R | R2>
}
```
