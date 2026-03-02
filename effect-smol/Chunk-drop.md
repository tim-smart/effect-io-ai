Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.drop

Drops the first up to `n` elements from the chunk.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4, 5)
const result = Chunk.drop(chunk, 2)
console.log(result)
// { _id: 'Chunk', values: [ 3, 4, 5 ] }
```

**Signature**

```ts
declare const drop: { (n: number): <A>(self: Chunk<A>) => Chunk<A>; <A>(self: Chunk<A>, n: number): Chunk<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L808)

Since v2.0.0