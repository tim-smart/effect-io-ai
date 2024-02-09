# catchSomeCause

Switches over to the stream produced by the provided function in case this
one fails with some errors. Allows recovery from all causes of failure,
including interruption if the stream is uninterruptible.

To import and use `catchSomeCause` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.catchSomeCause
```

**Signature**

```ts
export declare const catchSomeCause: {
  <E, R2, E2, A2>(
    pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>
  ): <R, A>(self: Stream<A, E, R>) => Stream<A2 | A, E | E2, R2 | R>
  <R, A, E, R2, E2, A2>(
    self: Stream<A, E, R>,
    pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>
  ): Stream<A | A2, E | E2, R | R2>
}
```
