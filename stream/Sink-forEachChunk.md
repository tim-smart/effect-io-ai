# forEachChunk

A sink that executes the provided effectful function for every chunk fed to
it.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const forEachChunk: <In, R, E, _>(
  f: (input: Chunk.Chunk<In>) => Effect.Effect<R, E, _>
) => Sink<R, E, In, never, void>
```
