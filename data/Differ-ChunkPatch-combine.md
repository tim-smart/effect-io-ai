# combine

Combines two chunk patches to produce a new chunk patch that describes
applying their changes sequentially.

To import and use `combine` from the "ChunkPatch" module:

```ts
import * as ChunkPatch from '@effect/data/Differ/ChunkPatch'

// Can be accessed like this
ChunkPatch.combine
```

**Signature**

```ts
export declare const combine: {
  <Value, Patch>(that: ChunkPatch<Value, Patch>): (self: ChunkPatch<Value, Patch>) => ChunkPatch<Value, Patch>
  <Value, Patch>(self: ChunkPatch<Value, Patch>, that: ChunkPatch<Value, Patch>): ChunkPatch<Value, Patch>
}
```
