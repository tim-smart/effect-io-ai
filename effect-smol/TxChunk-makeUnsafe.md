Package: `effect`<br />
Module: `TxChunk`<br />

## TxChunk.makeUnsafe

Creates a new `TxChunk` with the specified TxRef.

**Return behavior**: This function returns a new TxChunk reference wrapping
the provided TxRef. No existing TxChunk instances are modified.

**Example**

```ts
import { Chunk, TxChunk, TxRef } from "effect"

// Create a TxChunk from an existing TxRef (advanced usage)
const ref = TxRef.makeUnsafe(Chunk.fromIterable([1, 2, 3]))
const txChunk = TxChunk.makeUnsafe(ref)
```

**Signature**

```ts
declare const makeUnsafe: <A>(ref: TxRef.TxRef<Chunk.Chunk<A>>) => TxChunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxChunk.ts#L200)

Since v4.0.0