# run

Runs the sink on the stream to produce either the sink's result or an error.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const run: {
  <R2, E2, A, Z>(sink: Sink.Sink<R2, E2, A, unknown, Z>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<R2 | R, E2 | E, Z>
  <R, E, R2, E2, A, Z>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, unknown, Z>): Effect.Effect<R | R2, E | E2, Z>
}
```
