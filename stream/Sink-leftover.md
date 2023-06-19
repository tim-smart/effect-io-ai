# leftover

Creates a sink that does not consume any input but provides the given chunk
as its leftovers

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const leftover: <L>(chunk: Chunk.Chunk<L>) => Sink<never, never, unknown, L, void>
```
