# broadcast

Fan out the stream, producing a list of streams that have the same elements
as this stream. The driver stream will only ever advance the `maximumLag`
chunks before the slowest downstream stream.

To import and use `broadcast` from the "Stream" module:

```ts
import * as Stream from 'effect/Stream'

// Can be accessed like this
Stream.broadcast
```

**Signature**

```ts
export declare const broadcast: {
  <N extends number>(n: N, maximumLag: number): <R, E, A>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, never, Stream.DynamicTuple<Stream<never, E, A>, N>>
  <R, E, A, N extends number>(self: Stream<R, E, A>, n: N, maximumLag: number): Effect.Effect<
    Scope.Scope | R,
    never,
    Stream.DynamicTuple<Stream<never, E, A>, N>
  >
}
```
