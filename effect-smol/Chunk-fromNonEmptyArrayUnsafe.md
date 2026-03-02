Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.fromNonEmptyArrayUnsafe

Wraps an array into a chunk without copying, unsafe on mutable arrays

**Example**

```ts
import { Chunk } from "effect"
import * as Array from "effect/Array"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L627)

Since v2.0.0