# concat

Concatenates the specified stream with this stream, resulting in a stream
that emits the elements from this stream and then the elements from the
specified stream.

To import and use `concat` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.concat
```

**Signature**

```ts
export declare const concat: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>): <R, E, A>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>): Stream<R | R2, E | E2, A | A2>
}
```
