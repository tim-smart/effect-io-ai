# zipRight

Zips this stream with another point-wise, but keeps only the outputs of the
other stream.

The new stream will end when one of the sides ends.

To import and use `zipRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A2, E | E2, R | R2>
}
```
