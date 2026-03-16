Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.take

Takes the first up to `n` elements from the chunk.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.take(chunk, 3)
console.log(result)
// { _id: 'Chunk', values: [ 1, 2, 3 ] }
```

**Signature**

```ts
declare const take: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L750)

Since v2.0.0