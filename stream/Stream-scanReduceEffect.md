# scanReduceEffect

Statefully and effectfully maps over the elements of this stream to produce
all intermediate results.

See also `Stream.scanEffect`.

To import and use `scanReduceEffect` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.scanReduceEffect
```

**Signature**

```ts
export declare const scanReduceEffect: <A2, A, R2, E2>(
  f: (a2: A2 | A, a: A) => Effect.Effect<R2, E2, A2 | A>
) => <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A2 | A>
```
