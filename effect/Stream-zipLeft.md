# zipLeft

Zips this stream with another point-wise, but keeps only the outputs of
this stream.

The new stream will end when one of the sides ends.

To import and use `zipLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipLeft
```

**Signature**

```ts
export declare const zipLeft: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A, E | E2, R | R2>
}
```
