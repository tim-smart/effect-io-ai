# timeoutFailCause

Fails the stream with given cause if it does not produce a value after d
duration.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const timeoutFailCause: {
  <E2>(cause: LazyArg<Cause.Cause<E2>>, duration: Duration.Duration): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R, E2 | E, A>
  <R, E, A, E2>(self: Stream<R, E, A>, cause: LazyArg<Cause.Cause<E2>>, duration: Duration.Duration): Stream<
    R,
    E | E2,
    A
  >
}
```
