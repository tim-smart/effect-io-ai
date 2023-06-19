# timeoutFail

Fails the stream with given error if it does not produce a value after d
duration.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const timeoutFail: {
  <E2>(error: LazyArg<E2>, duration: Duration.Duration): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E2 | E, A>
  <R, E, A, E2>(self: Stream<R, E, A>, error: LazyArg<E2>, duration: Duration.Duration): Stream<R, E | E2, A>
}
```
