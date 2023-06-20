# mergeHaltStrategy

Like `merge`, but with a configurable `strategy` parameter.

To import and use `mergeHaltStrategy` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.mergeHaltStrategy
```

**Signature**

```ts
export declare const mergeHaltStrategy: {
  <R2, E2, A2>(that: Stream<R2, E2, A2>, strategy: HaltStrategy.HaltStrategy): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, that: Stream<R2, E2, A2>, strategy: HaltStrategy.HaltStrategy): Stream<
    R | R2,
    E | E2,
    A | A2
  >
}
```
