Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk.With

Constructs a Chunk type preserving non-emptiness.

**Example**

```ts
import type { Chunk } from "effect"

declare const regularChunk: Chunk.Chunk<number>
declare const nonEmptyChunk: Chunk.NonEmptyChunk<number>

type WithString1 = Chunk.Chunk.With<typeof regularChunk, string> // Chunk.Chunk<string>
type WithString2 = Chunk.Chunk.With<typeof nonEmptyChunk, string> // Chunk.NonEmptyChunk<string>
```

**Signature**

```ts
type With<S, A> = S extends NonEmptyChunk<any> ? NonEmptyChunk<A> : Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1554)

Since v2.0.0