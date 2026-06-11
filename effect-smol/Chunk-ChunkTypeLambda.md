Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.ChunkTypeLambda

Type lambda for Chunk, used for higher-kinded type operations.

**Example** (Applying the Chunk type lambda)

```ts
import type { Chunk, HKT } from "effect"

// Create a Chunk type using the type lambda
type NumberChunk = HKT.Kind<Chunk.ChunkTypeLambda, never, never, never, number>
// Equivalent to: Chunk<number>
```

**Signature**

```ts
export interface ChunkTypeLambda extends TypeLambda {
  readonly type: Chunk<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L96)

Since v2.0.0