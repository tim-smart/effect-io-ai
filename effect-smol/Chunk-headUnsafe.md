Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.headUnsafe

Returns the first element of this chunk.

It will throw an error if the chunk is empty.

**Example** (Getting the first element unsafely)

```ts
import { Chunk, Option } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.headUnsafe(chunk)) // 1

const singleElement = Chunk.make("hello")
console.log(Chunk.headUnsafe(singleElement)) // "hello"

// Use Chunk.head when the chunk may be empty
console.log(Option.isNone(Chunk.head(Chunk.empty()))) // true
```

**Signature**

```ts
declare const headUnsafe: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1428)

Since v2.0.0