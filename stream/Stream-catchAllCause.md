# catchAllCause

Switches over to the stream produced by the provided function in case this
one fails. Allows recovery from all causes of failure, including
interruption if the stream is uninterruptible.

To import and use `catchAllCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.catchAllCause
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, R2, E2, A2>(f: (cause: Cause.Cause<E>) => Stream<R2, E2, A2>): <R, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2, A2 | A>
  <R, A, E, R2, E2, A2>(self: Stream<R, E, A>, f: (cause: Cause.Cause<E>) => Stream<R2, E2, A2>): Stream<
    R | R2,
    E2,
    A | A2
  >
}
```
