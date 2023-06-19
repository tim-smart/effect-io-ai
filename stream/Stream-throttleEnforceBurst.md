# throttleEnforceBurst

Like `throttleEnforce`, but with a configurable `burst` parameter.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const throttleEnforceBurst: {
  <A>(costFn: (chunk: Chunk.Chunk<A>) => number, units: number, duration: Duration.Duration, burst: number): <R, E>(
    self: Stream<R, E, A>
  ) => Stream<R, E, A>
  <R, E, A>(
    self: Stream<R, E, A>,
    costFn: (chunk: Chunk.Chunk<A>) => number,
    units: number,
    duration: Duration.Duration,
    burst: number
  ): Stream<R, E, A>
}
```
