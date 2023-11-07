# catchSomeCause

Switches over to the stream produced by the provided function in case this
one fails with some errors. Allows recovery from all causes of failure,
including interruption if the stream is uninterruptible.

To import and use `catchSomeCause` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.catchSomeCause
```

**Signature**

```ts
export declare const catchSomeCause: {
  <E, R2, E2, A2>(pf: (cause: Cause.Cause<E>) => Option.Option<Stream<R2, E2, A2>>): <R, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E | E2, A2 | A>
  <R, A, E, R2, E2, A2>(
    self: Stream<R, E, A>,
    pf: (cause: Cause.Cause<E>) => Option.Option<Stream<R2, E2, A2>>
  ): Stream<R | R2, E | E2, A | A2>
}
```
