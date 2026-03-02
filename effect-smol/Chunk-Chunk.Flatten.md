Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.Chunk.Flatten

Flattens a nested Chunk type.

**Example**

```ts
import type { Chunk } from "effect"

declare const nestedChunk: Chunk.Chunk<Chunk.Chunk<number>>
declare const nestedNonEmpty: Chunk.NonEmptyChunk<Chunk.NonEmptyChunk<string>>

type Flattened1 = Chunk.Chunk.Flatten<typeof nestedChunk> // Chunk.Chunk<number>
type Flattened2 = Chunk.Chunk.Flatten<typeof nestedNonEmpty> // Chunk.NonEmptyChunk<string>
```

**Signature**

```ts
type Flatten<T> = T extends NonEmptyChunk<NonEmptyChunk<infer A>> ? NonEmptyChunk<A>
    : T extends Chunk<Chunk<infer A>> ? Chunk<A>
    : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1644)

Since v2.0.0