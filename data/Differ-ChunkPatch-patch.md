# patch

Applies a chunk patch to a chunk of values to produce a new chunk of
values which represents the original chunk of values updated with the
changes described by this patch.

To import and use `patch` from the "ChunkPatch" module:

```ts
import * as ChunkPatch from '@effect/data/Differ/ChunkPatch'

// Can be accessed like this
ChunkPatch.patch
```

**Signature**

```ts
export declare const patch: {
  <Value, Patch>(oldValue: Chunk<Value>, differ: Differ<Value, Patch>): (self: ChunkPatch<Value, Patch>) => Chunk<Value>
  <Value, Patch>(self: ChunkPatch<Value, Patch>, oldValue: Chunk<Value>, differ: Differ<Value, Patch>): Chunk<Value>
}
```
