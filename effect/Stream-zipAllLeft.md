# zipAllLeft

Zips this stream with another point-wise, and keeps only elements from this
stream.

The provided default value will be used if the other stream ends before
this one.

To import and use `zipAllLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipAllLeft
```

**Signature**

```ts
export declare const zipAllLeft: {
  <A2, E2, R2, A>(that: Stream<A2, E2, R2>, defaultLeft: A): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, defaultLeft: A): Stream<A, E | E2, R | R2>
}
```
