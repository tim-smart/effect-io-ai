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
    f: (cause: Cause.Cause<NoInfer<E>>) => Effect.Effect<_, E2, R2>
  ): <R, A>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>
  <R, A, E, R2, E2, _>(
    self: Stream<A, E, R>,
    f: (cause: Cause.Cause<E>) => Effect.Effect<_, E2, R2>
  ): Stream<A, E | E2, R | R2>
}
```
