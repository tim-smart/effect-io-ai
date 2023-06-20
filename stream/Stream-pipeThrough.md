# pipeThrough

Pipes all of the values from this stream through the provided sink.

See also `Stream.transduce`.

To import and use `pipeThrough` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.pipeThrough
```

**Signature**

```ts
export declare const pipeThrough: {
  <R2, E2, A, L, Z>(sink: Sink.Sink<R2, E2, A, L, Z>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, L>
  <R, E, R2, E2, A, L, Z>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, L, Z>): Stream<R | R2, E | E2, L>
}
```
