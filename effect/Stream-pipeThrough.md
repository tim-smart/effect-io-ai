# pipeThrough

Pipes all of the values from this stream through the provided sink.

See also `Stream.transduce`.

To import and use `pipeThrough` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.pipeThrough
```

**Signature**

```ts
export declare const pipeThrough: {
  <A2, A, L, E2, R2>(sink: Sink.Sink<A2, A, L, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<L, E2 | E, R2 | R>
  <A, E, R, A2, L, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, L, E2, R2>): Stream<L, E | E2, R | R2>
}
```
