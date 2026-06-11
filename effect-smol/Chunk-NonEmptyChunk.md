Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.NonEmptyChunk

A non-empty Chunk guaranteed to contain at least one element.

**Example** (Working with non-empty chunks)

```ts
import { Chunk } from "effect"

const nonEmptyChunk: Chunk.NonEmptyChunk<number> = Chunk.make(1, 2, 3)
console.log(Chunk.headNonEmpty(nonEmptyChunk)) // 1
console.log(Chunk.lastNonEmpty(nonEmptyChunk)) // 3
```

**Signature**

```ts
export interface NonEmptyChunk<out A> extends Chunk<A>, NonEmptyIterable<A> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L78)

Since v2.0.0