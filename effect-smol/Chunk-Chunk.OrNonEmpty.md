Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk.OrNonEmpty

Creates a non-empty Chunk if either input is non-empty.

**Example**

```ts
import type { Chunk } from "effect"

declare const emptyChunk: Chunk.Chunk<number>
declare const nonEmptyChunk: Chunk.NonEmptyChunk<number>

type Result1 = Chunk.Chunk.OrNonEmpty<
  typeof emptyChunk,
  typeof emptyChunk,
  string
> // Chunk.Chunk<string>
type Result2 = Chunk.Chunk.OrNonEmpty<
  typeof emptyChunk,
  typeof nonEmptyChunk,
  string
> // Chunk.NonEmptyChunk<string>
type Result3 = Chunk.Chunk.OrNonEmpty<
  typeof nonEmptyChunk,
  typeof emptyChunk,
  string
> // Chunk.NonEmptyChunk<string>
```

**Signature**

```ts
type OrNonEmpty<S, T, A> = S extends NonEmptyChunk<any> ?
    NonEmptyChunk<A>
    : T extends NonEmptyChunk<any> ? NonEmptyChunk<A>
    : Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1586)

Since v2.0.0