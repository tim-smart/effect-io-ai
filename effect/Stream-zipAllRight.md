# zipAllRight

Zips this stream with another point-wise, and keeps only elements from the
other stream.

The provided default value will be used if this stream ends before the
other one.

To import and use `zipAllRight` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipAllRight
```

**Signature**

```ts
export declare const zipAllRight: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>, defaultRight: A2): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>, defaultRight: A2): Stream<R | R2, E | E2, A2>
}
```
