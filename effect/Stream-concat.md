# concat

Concatenates the specified stream with this stream, resulting in a stream
that emits the elements from this stream and then the elements from the
specified stream.

To import and use `concat` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.concat
```

**Signature**

```ts
export declare const concat: {
  <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<A | A2, E | E2, R | R2>
}
```
