# timeoutFailCause

Fails the stream with given cause if it does not produce a value after d
duration.

To import and use `timeoutFailCause` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.timeoutFailCause
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E2>(
    cause: LazyArg<Cause.Cause<E2>>,
    duration: Duration.DurationInput
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R>
  <R, E, A, E2>(
    self: Stream<A, E, R>,
    cause: LazyArg<Cause.Cause<E2>>,
    duration: Duration.DurationInput
  ): Stream<A, E | E2, R>
}
```
