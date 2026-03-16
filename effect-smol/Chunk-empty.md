Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.empty

Creates an empty `Chunk`.

**Example**

```ts
import { Chunk } from "effect"

const emptyChunk = Chunk.empty()
console.log(Chunk.size(emptyChunk)) // 0
```

**Signature**

```ts
declare const empty: <A = never>() => Chunk<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L355)

Since v2.0.0