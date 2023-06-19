# collectAllN

A sink that collects first `n` elements into a chunk.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const collectAllN: <In>(n: number) => Sink<never, never, In, In, Chunk.Chunk<In>>
```
