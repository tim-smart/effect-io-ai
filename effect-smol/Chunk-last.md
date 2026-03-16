Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.last

Returns the last element of this chunk if it exists.

**Example**

```ts
import { Chunk } from "effect"

console.log(Chunk.last(Chunk.empty())) // { _tag: "None" }
console.log(Chunk.last(Chunk.make(1, 2, 3))) // { _tag: "Some", value: 3 }
```

**Signature**

```ts
declare const last: <A>(self: Chunk<A>) => Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1446)

Since v2.0.0