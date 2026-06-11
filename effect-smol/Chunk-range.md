Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.range

Creates a non-empty `Chunk` of consecutive integers from `start` through
`end`, inclusive.

**Details**

If `start` is greater than `end`, returns a single-element chunk containing
`start`.

**Example** (Creating a range)

```ts
import { Chunk } from "effect"

const chunk = Chunk.range(1, 5)
console.log(Chunk.toArray(chunk)) // [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const range: (start: number, end: number) => NonEmptyChunk<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2526)

Since v2.0.0