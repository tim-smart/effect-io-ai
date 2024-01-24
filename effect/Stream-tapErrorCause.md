# tapErrorCause

Returns a stream that effectfully "peeks" at the cause of failure of the
stream.

To import and use `tapErrorCause` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tapErrorCause
```

**Signature**

```ts
export declare const tapErrorCause: {
  <E, R2, E2, _>(
    f: (cause: Cause.Cause<NoInfer<E>>) => Effect.Effect<R2, E2, _>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E | E2, A>
  <R, A, E, R2, E2, _>(
    self: Stream<R, E, A>,
    f: (cause: Cause.Cause<E>) => Effect.Effect<R2, E2, _>
  ): Stream<R | R2, E | E2, A>
}
```
