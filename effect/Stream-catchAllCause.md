# catchAllCause

Switches over to the stream produced by the provided function in case this
one fails. Allows recovery from all causes of failure, including
interruption if the stream is uninterruptible.

To import and use `catchAllCause` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.catchAllCause
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, A2, E2, R2>(
    f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>
  ): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    f: (cause: Cause.Cause<E>) => Stream<A2, E2, R2>
  ): Stream<A | A2, E2, R | R2>
}
```
