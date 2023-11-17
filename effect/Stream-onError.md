# onError

Runs the specified effect if this stream fails, providing the error to the
effect if it exists.

Note: Unlike `Effect.onError` there is no guarantee that the provided
effect will not be interrupted.

To import and use `onError` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.onError
```

**Signature**

```ts
export declare const onError: {
  <E, R2, _>(
    cleanup: (cause: Cause.Cause<E>) => Effect.Effect<R2, never, _>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, A, E, R2, _>(
    self: Stream<R, E, A>,
    cleanup: (cause: Cause.Cause<E>) => Effect.Effect<R2, never, _>
  ): Stream<R | R2, E, A>
}
```
