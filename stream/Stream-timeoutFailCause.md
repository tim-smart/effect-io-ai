# timeoutFailCause

Fails the stream with given cause if it does not produce a value after d
duration.

To import and use `timeoutFailCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.timeoutFailCause
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E2>(cause: LazyArg<Cause.Cause<E2>>, duration: Duration.DurationInput): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R, E2 | E, A>
  <R, E, A, E2>(self: Stream<R, E, A>, cause: LazyArg<Cause.Cause<E2>>, duration: Duration.DurationInput): Stream<
    R,
    E | E2,
    A
  >
}
```
