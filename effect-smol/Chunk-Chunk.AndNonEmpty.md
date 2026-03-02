Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk.AndNonEmpty

Creates a non-empty Chunk only if both inputs are non-empty.

**Example**

```ts
import type { Chunk } from "effect"

declare const emptyChunk: Chunk.Chunk<number>
declare const nonEmptyChunk: Chunk.NonEmptyChunk<number>

type Result1 = Chunk.Chunk.AndNonEmpty<
  typeof emptyChunk,
  typeof emptyChunk,
  string
> // Chunk.Chunk<string>
type Result2 = Chunk.Chunk.AndNonEmpty<
  typeof emptyChunk,
  typeof nonEmptyChunk,
  string
> // Chunk.Chunk<string>
type Result3 = Chunk.Chunk.AndNonEmpty<
  typeof nonEmptyChunk,
  typeof nonEmptyChunk,
  string
> // Chunk.NonEmptyChunk<string>
```

**Signature**

```ts
type AndNonEmpty<S, T, A> = S extends NonEmptyChunk<any> ?
    T extends NonEmptyChunk<any> ? NonEmptyChunk<A>
    : Chunk<A> :
    Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1622)

Since v2.0.0