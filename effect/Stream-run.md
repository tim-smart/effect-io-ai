# run

Runs the sink on the stream to produce either the sink's result or an error.

To import and use `run` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.run
```

**Signature**

```ts
export declare const run: {
  <A2, A, E2, R2>(
    sink: Sink.Sink<A2, A, unknown, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Effect.Effect<A2, E2 | E, Exclude<R | R2, Scope.Scope>>
  <A, E, R, A2, E2, R2>(
    self: Stream<A, E, R>,
    sink: Sink.Sink<A2, A, unknown, E2, R2>
  ): Effect.Effect<A2, E | E2, Exclude<R | R2, Scope.Scope>>
}
```
