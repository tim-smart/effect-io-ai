# chunk

Constructs a differ that knows how to diff a `Chunk` of values given a
differ that knows how to diff the values.

Part of the `Differ` module, imported from `@effect/data/Differ`.

**Signature**

```ts
export declare const chunk: <Value, Patch>(
  differ: Differ<Value, Patch>
) => Differ<Chunk<Value>, ChunkPatch<Value, Patch>>
```
