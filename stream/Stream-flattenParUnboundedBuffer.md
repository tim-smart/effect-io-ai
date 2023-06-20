# flattenParUnboundedBuffer

Like `Stream.flattenParUnbounded`, but with `bufferSize` parameter.

To import and use `flattenParUnboundedBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenParUnboundedBuffer
```

**Signature**

```ts
export declare const flattenParUnboundedBuffer: {
  (bufferSize: number): <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>, bufferSize: number): Stream<R | R2, E | E2, A>
}
```
