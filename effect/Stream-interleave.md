# interleave

Interleaves this stream and the specified stream deterministically by
alternating pulling values from this stream and the specified stream. When
one stream is exhausted all remaining values in the other stream will be
pulled.

To import and use `interleave` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.interleave
```

**Signature**

```ts
export declare const interleave: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A | A2>
}
```
