Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.head

Returns the first element of this chunk if it exists.

**Example**

```ts
import { Chunk } from "effect"

console.log(Chunk.head(Chunk.empty())) // { _tag: "None" }
console.log(Chunk.head(Chunk.make(1, 2, 3))) // { _tag: "Some", value: 1 }
```

**Signature**

```ts
declare const head: <A>(self: Chunk<A>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1380)

Since v2.0.0