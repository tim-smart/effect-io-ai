# diff

Constructs a chunk patch from a new and old chunk of values and a differ
for the values.

Part of the `ChunkPatch` module, imported from `@effect/data/Differ/ChunkPatch`.

**Signature**

```ts
export declare const diff: <Value, Patch>(
  oldValue: Chunk<Value>,
  newValue: Chunk<Value>,
  differ: Differ<Value, Patch>
) => ChunkPatch<Value, Patch>
```
