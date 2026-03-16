Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.headNonEmpty

Returns the first element of this non empty chunk.

**Example**

```ts
import { Chunk } from "effect"

const nonEmptyChunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.headNonEmpty(nonEmptyChunk)) // 1

const singleElement = Chunk.make("hello")
console.log(Chunk.headNonEmpty(singleElement)) // "hello"

// Type safety: this function only accepts NonEmptyChunk
// Chunk.headNonEmpty(Chunk.empty()) // TypeScript error
```

**Signature**

```ts
declare const headNonEmpty: <A>(self: NonEmptyChunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1430)

Since v2.0.0