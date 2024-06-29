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
  <E, A2, E2, R2>(
    pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>
  ): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A, E | E2, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>
  ): Stream<A | A2, E | E2, R | R2>
}
```
