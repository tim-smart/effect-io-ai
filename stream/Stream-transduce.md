# transduce

Applies the transducer to the stream and emits its outputs.

To import and use `transduce` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.transduce
```

**Signature**

```ts
export declare const transduce: {
  <R2, E2, A, Z>(sink: Sink.Sink<R2, E2, A, A, Z>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, Z>
  <R, E, R2, E2, A, Z>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, A, Z>): Stream<R | R2, E | E2, Z>
}
```
