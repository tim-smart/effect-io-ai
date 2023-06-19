# timeoutTo

Switches the stream if it does not produce a value after the specified
duration.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const timeoutTo: {
  <R2, E2, A2>(duration: Duration.Duration, that: Stream<R2, E2, A2>): <R, E, A>(
    self: Stream<R, E, A>
  ) => Stream<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Stream<R, E, A>, duration: Duration.Duration, that: Stream<R2, E2, A2>): Stream<
    R | R2,
    E | E2,
    A | A2
  >
}
```
