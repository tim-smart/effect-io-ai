Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.isNonEmpty

Determines if the chunk is not empty.

**Example**

```ts
import { Chunk } from "effect"

console.log(Chunk.isNonEmpty(Chunk.empty())) // false
console.log(Chunk.isNonEmpty(Chunk.make(1, 2, 3))) // true
```

**Signature**

```ts
declare const isNonEmpty: <A>(self: Chunk<A>) => self is NonEmptyChunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1365)

Since v2.0.0