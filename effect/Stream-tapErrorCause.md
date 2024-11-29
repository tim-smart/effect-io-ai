# tapErrorCause

Returns a stream that effectfully "peeks" at the cause of failure of the
stream.

To import and use `tapErrorCause` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.tapErrorCause
undefined

**Signature**

```ts
export declare const tapErrorCause: {
  <E, X, E2, R2>(
    f: (cause: Cause.Cause<NoInfer<E>>) => Effect.Effect<X, E2, R2>
  ): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>
  <A, E, R, X, E2, R2>(
    self: Stream<A, E, R>,
    f: (cause: Cause.Cause<E>) => Effect.Effect<X, E2, R2>
  ): Stream<A, E | E2, R | R2>
}
```
