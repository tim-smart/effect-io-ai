Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.tail

Returns every elements after the first.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)
console.log(Chunk.tail(chunk)) // Option.some(Chunk.make(2, 3, 4))

const singleElement = Chunk.make(1)
console.log(Chunk.tail(singleElement)) // Option.some(Chunk.empty())

const empty = Chunk.empty<number>()
console.log(Chunk.tail(empty)) // Option.none()
```

**Signature**

```ts
declare const tail: <A>(self: Chunk<A>) => Chunk<A> | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L2039)

Since v2.0.0