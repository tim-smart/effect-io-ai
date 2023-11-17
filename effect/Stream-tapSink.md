# tapSink

Sends all elements emitted by this stream to the specified sink in addition
to emitting them.

To import and use `tapSink` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.tapSink
```

**Signature**

```ts
export declare const tapSink: {
  <R2, E2, A>(sink: Sink.Sink<R2, E2, A, unknown, unknown>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E2 | E, A>
  <R, E, R2, E2, A>(self: Stream<R, E, A>, sink: Sink.Sink<R2, E2, A, unknown, unknown>): Stream<R | R2, E | E2, A>
}
```
