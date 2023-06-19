# timeout

Ends the stream if it does not produce a value after the specified duration.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const timeout: {
  (duration: Duration.Duration): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, duration: Duration.Duration): Stream<R, E, A>
}
```
