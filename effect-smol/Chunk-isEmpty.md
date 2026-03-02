Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.isEmpty

Determines if the chunk is empty.

**Example**

```ts
import { Chunk } from "effect"

console.log(Chunk.isEmpty(Chunk.empty())) // true
console.log(Chunk.isEmpty(Chunk.make(1, 2, 3))) // false
```

**Signature**

```ts
declare const isEmpty: <A>(self: Chunk<A>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1349)

Since v2.0.0