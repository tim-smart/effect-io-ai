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
  <R2, E2, A2, A>(that: Stream<R2, E2, A2>, defaultLeft: A): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, R2, E2, A2, A>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>, defaultLeft: A): Stream<R | R2, E | E2, A>
}
```
