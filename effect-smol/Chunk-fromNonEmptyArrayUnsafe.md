Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.fromNonEmptyArrayUnsafe

Wraps a non-empty array into a non-empty chunk without copying, so mutating
the source array can mutate the chunk.

**Example** (Creating non-empty chunks without copying arrays)

```ts
import { Array, Chunk } from "effect"

const nonEmptyArray = Array.make(1, 2, 3, 4, 5)
const chunk = Chunk.fromNonEmptyArrayUnsafe(nonEmptyArray)
console.log(Chunk.toArray(chunk)) // [1, 2, 3, 4, 5]

// The result is guaranteed to be non-empty
console.log(Chunk.isNonEmpty(chunk)) // true
```

**Signature**

```ts
declare const fromNonEmptyArrayUnsafe: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyChunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L647)

Since v4.0.0