# broadcast

Fan out the stream, producing a list of streams that have the same elements
as this stream. The driver stream will only ever advance the `maximumLag`
chunks before the slowest downstream stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

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
