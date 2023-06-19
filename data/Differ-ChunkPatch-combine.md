# combine

Combines two chunk patches to produce a new chunk patch that describes
applying their changes sequentially.

Part of the `ChunkPatch` module, imported from `@effect/data/Differ/ChunkPatch`.

**Signature**

```ts
export declare const combine: {
  <Value, Patch>(that: ChunkPatch<Value, Patch>): (self: ChunkPatch<Value, Patch>) => ChunkPatch<Value, Patch>
  <Value, Patch>(self: ChunkPatch<Value, Patch>, that: ChunkPatch<Value, Patch>): ChunkPatch<Value, Patch>
}
```
