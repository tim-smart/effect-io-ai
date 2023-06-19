# runForEachWhile

Consumes elements of the stream, passing them to the specified callback,
and terminating consumption when the callback returns `false`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runForEachWhile: {
  <A, R2, E2>(f: (a: A) => Effect.Effect<R2, E2, boolean>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<R2 | R, E2 | E, void>
  <R, E, A, R2, E2>(self: Stream<R, E, A>, f: (a: A) => Effect.Effect<R2, E2, boolean>): Effect.Effect<
    R | R2,
    E | E2,
    void
  >
}
```
