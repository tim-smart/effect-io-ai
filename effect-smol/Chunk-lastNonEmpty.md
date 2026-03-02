Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.lastNonEmpty

Returns the last element of this non empty chunk.

**Example**

```ts
import { Chunk } from "effect"

const nonEmptyChunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.lastNonEmpty(nonEmptyChunk)) // 4

const singleElement = Chunk.make("hello")
console.log(Chunk.lastNonEmpty(singleElement)) // "hello"

// Type safety: this function only accepts NonEmptyChunk
// Chunk.lastNonEmpty(Chunk.empty()) // TypeScript error
```

**Signature**

```ts
declare const lastNonEmpty: <A>(self: NonEmptyChunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1497)

Since v3.4.0