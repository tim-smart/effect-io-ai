Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.size

Retrieves the size of the chunk.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3)
console.log(Chunk.size(chunk)) // 3
```

**Signature**

```ts
declare const size: <A>(self: Chunk<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1803)

Since v2.0.0