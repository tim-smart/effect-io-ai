# mergeWithHaltStrategy

Like `mergeWith`, but with a configurable `strategy` parameter.

To import and use `mergeWithHaltStrategy` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeWithHaltStrategy
```

**Signature**

```ts
export declare const mergeWithHaltStrategy: {
  <R2, E2, A2, A, A3, A4>(
    that: Stream<R2, E2, A2>,
    left: (a: A) => A3,
    right: (a2: A2) => A4,
    strategy: HaltStrategy.HaltStrategy
  ): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A3 | A4>
  <R, E, R2, E2, A2, A, A3, A4>(
    self: Stream<R, E, A>,
    that: Stream<R2, E2, A2>,
    left: (a: A) => A3,
    right: (a2: A2) => A4,
    strategy: HaltStrategy.HaltStrategy
  ): Stream<R | R2, E | E2, A3 | A4>
}
```
