Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.ChunkTypeLambda

Type lambda for Chunk, used for higher-kinded type operations.

**Example**

```ts
import type { ChunkTypeLambda } from "effect/Chunk"
import type { Kind } from "effect/HKT"

// Create a Chunk type using the type lambda
type NumberChunk = Kind<ChunkTypeLambda, never, never, never, number>
// Equivalent to: Chunk<number>
```

**Signature**

```ts
export interface ChunkTypeLambda extends TypeLambda {
  readonly type: Chunk<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L154)

Since v2.0.0