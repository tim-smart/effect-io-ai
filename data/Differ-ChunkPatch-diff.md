# diff

Constructs a chunk patch from a new and old chunk of values and a differ
for the values.

To import and use `diff` from the "ChunkPatch" module:

```ts
import * as ChunkPatch from '@effect/data/Differ/ChunkPatch'

// Can be accessed like this
ChunkPatch.diff
```

**Signature**

```ts
export declare const diff: <Value, Patch>(options: {
  readonly oldValue: Chunk<Value>
  readonly newValue: Chunk<Value>
  readonly differ: Differ<Value, Patch>
}) => ChunkPatch<Value, Patch>
```
