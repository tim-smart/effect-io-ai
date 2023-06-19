# patch

Applies a chunk patch to a chunk of values to produce a new chunk of
values which represents the original chunk of values updated with the
changes described by this patch.

Part of the `ChunkPatch` module, imported from `@effect/data/Differ/ChunkPatch`.

**Signature**

```ts
export declare const patch: {
  <Value, Patch>(oldValue: Chunk<Value>, differ: Differ<Value, Patch>): (self: ChunkPatch<Value, Patch>) => Chunk<Value>
  <Value, Patch>(self: ChunkPatch<Value, Patch>, oldValue: Chunk<Value>, differ: Differ<Value, Patch>): Chunk<Value>
}
```
