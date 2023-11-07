# zipRight

Zips this stream with another point-wise, but keeps only the outputs of the
other stream.

The new stream will end when one of the sides ends.

To import and use `zipRight` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.zipRight
```

**Signature**

```ts
export declare const zipRight: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A2>
}
```
