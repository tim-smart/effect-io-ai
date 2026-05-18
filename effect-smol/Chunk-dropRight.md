Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.dropRight

Drops the last `n` elements.

**Example** (Dropping elements from the end)

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.dropRight(chunk, 2)
console.log(Chunk.toArray(result)) // [1, 2, 3]
```

**Signature**

```ts
declare const dropRight: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L875)

Since v2.0.0