# broadcast

Fan out the stream, producing a list of streams that have the same elements
as this stream. The driver stream will only ever advance the `maximumLag`
chunks before the slowest downstream stream.

To import and use `broadcast` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.broadcast
```

**Signature**

```ts
export declare const broadcast: {
  <N extends number>(
    n: N,
    maximumLag: number
  ): <A, E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<Stream.DynamicTuple<Stream<A, E, never>, N>, never, Scope.Scope | R>
  <A, E, R, N extends number>(
    self: Stream<A, E, R>,
    n: N,
    maximumLag: number
  ): Effect.Effect<Stream.DynamicTuple<Stream<A, E, never>, N>, never, Scope.Scope | R>
}
```
