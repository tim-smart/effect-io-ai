# tapSink

Sends all elements emitted by this stream to the specified sink in addition
to emitting them.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const tapSink: {
  <R2, E2, A>(sink: Sink.Sink<R2, E2, A, unknown, unknown>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, R2, E2, A>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, unknown, unknown>): Stream<R | R2, E | E2, A>
}
```
