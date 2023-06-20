# flattenParBuffer

Like `flattenPar`, but with a configurable `bufferSize` parameter.

To import and use `flattenParBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenParBuffer
```

**Signature**

```ts
export declare const flattenParBuffer: {
  (n: number, bufferSize: number): <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>, n: number, bufferSize: number): Stream<R | R2, E | E2, A>
}
```
