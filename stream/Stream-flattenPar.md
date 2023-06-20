# flattenPar

Flattens a stream of streams into a stream by executing a non-deterministic
concurrent merge. Up to `n` streams may be consumed in parallel and up to
`outputBuffer` elements may be buffered by this operator.

To import and use `flattenPar` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.flattenPar
```

**Signature**

```ts
export declare const flattenPar: {
  (n: number): <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, R2, E2, A>(self: Stream<R, E, Stream<R2, E2, A>>, n: number): Stream<R | R2, E | E2, A>
}
```
