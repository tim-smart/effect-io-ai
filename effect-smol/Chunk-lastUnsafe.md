Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.lastUnsafe

Returns the last element of this chunk.

**Gotchas**

Throws an error if the chunk is empty.

**Example** (Getting the last element unsafely)

```ts
import { Chunk, Option } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.lastUnsafe(chunk)) // 4

const singleElement = Chunk.make("hello")
console.log(Chunk.lastUnsafe(singleElement)) // "hello"

// Use Chunk.last when the chunk may be empty
console.log(Option.isNone(Chunk.last(Chunk.empty()))) // true
```

**Signature**

```ts
declare const lastUnsafe: <A>(self: Chunk<A>) => A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1525)

Since v4.0.0